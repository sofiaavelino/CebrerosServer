using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using Newtonsoft.Json;

public class MultiSpacecraftLoader : MonoBehaviour
{
    public string resourceFolder = "Spacecrafts"; // The Resources folder path
    public float positionScale = 1E3f; // Scale for positions (from JSON data)
    private Dictionary<string, GameObject> spacecraftObjects = new Dictionary<string, GameObject>();

    void Start()
    {
        LoadSpacecrafts();
    }

    void LoadSpacecrafts()
    {
        // Get all JSON files in the Resources folder starting with "sc_"
        TextAsset[] jsonFiles = Resources.LoadAll<TextAsset>(resourceFolder);
        foreach (TextAsset jsonFile in jsonFiles)
        {
            if (jsonFile.name.StartsWith("sc_"))
            {
                // Parse spacecraft data
                SpacecraftData spacecraftData = JsonConvert.DeserializeObject<SpacecraftData>(jsonFile.text);

                // Match GameObject by spacecraft name
                if (spacecraftObjects.ContainsKey(spacecraftData.name))
                {
                    Debug.LogWarning($"Duplicate spacecraft name found: {spacecraftData.name}");
                    continue;
                }

                GameObject spacecraftObject = GameObject.Find(spacecraftData.name);
                if (spacecraftObject == null)
                {
                    Debug.LogError($"GameObject not found for spacecraft: {spacecraftData.name}");
                    continue;
                }

                spacecraftObjects.Add(spacecraftData.name, spacecraftObject);

                // Parse positions and times
                List<float> times = new List<float>();
                List<Vector3> positions = new List<Vector3>();
                var cartesian = spacecraftData.position.cartesian;

                for (int i = 0; i < cartesian.Count; i += 4) // Time + X, Y, Z
                {
                    times.Add(cartesian[i]); // Time in minutes
                    positions.Add(new Vector3(
                        (float)cartesian[i + 1] / positionScale,
                        (float)cartesian[i + 2] / positionScale,
                        (float)cartesian[i + 3] / positionScale
                    ));
                }

                // Get the current time in minutes since the start of the day
                TimeSpan currentTime = DateTime.Now.TimeOfDay;
                float minutesSinceStartOfDay = (float)currentTime.TotalMinutes;

                // Find the closest index to the current time
                int startIndex = 0;
                for (int i = 0; i < times.Count - 1; i++)
                {
                    if (times[i] <= minutesSinceStartOfDay && times[i + 1] > minutesSinceStartOfDay)
                    {
                        startIndex = i;
                        break;
                    }
                }

                // Start position update for the spacecraft
                StartCoroutine(UpdateSpacecraftPosition(spacecraftObject, times, positions, startIndex));
            }
        }
    }

    IEnumerator UpdateSpacecraftPosition(GameObject spacecraft, List<float> times, List<Vector3> positions, int startIndex)
    {
        for (int i = startIndex; i < times.Count - 1; i++)
        {
            float duration = times[i + 1] - times[i]; // Time between points
            Vector3 start = positions[i];
            Vector3 end = positions[i + 1];
            float elapsedTime = 0f;

            while (elapsedTime < duration * 60f) // Convert minutes to seconds
            {
                elapsedTime += Time.deltaTime;
                float t = elapsedTime / (duration * 60f); // Normalized time [0, 1]
                spacecraft.transform.position = Vector3.Lerp(start, end, t);
                yield return null;
            }

            // Snap to exact position at the end of the segment
            spacecraft.transform.position = end;
        }
    }
}

[System.Serializable]
public class SpacecraftData
{
    public string name;
    public PositionData position;

    [System.Serializable]
    public class PositionData
    {
        public List<double> cartesian;
    }
}

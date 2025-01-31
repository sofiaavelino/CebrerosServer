using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using UnityEngine;

public class AzimuthUpdater : MonoBehaviour
{
    private List<KeyValuePair<TimeSpan, float>> azimuthSchedule = new List<KeyValuePair<TimeSpan, float>>();
    private TimeSpan startTimeOfDay;
    private float initialAzimuth;
    private float currentAzimuth;
    private int currentIndex = 0;
    private float lerpProgress = 0f;
    [SerializeField] private Transform antennaBase; //object to rotate for azimuth

    void Start()
    {
        initialAzimuth = transform.eulerAngles.y; // Record the initial azimuth angle
        LoadAzimuthSchedule();
        SetInitialAzimuth();
    }

    void Update()
    {
        SmoothUpdateAzimuth();
    }

    void LoadAzimuthSchedule()
    {
        try
        {
            // Load the azimuths.txt file from Resources
            TextAsset azimuthFile = Resources.Load<TextAsset>("azimuths");
            if (azimuthFile == null)
            {
                Debug.LogError("azimuths.txt file not found in Resources.");
                return;
            }

            // Parse the file
            using (StringReader reader = new StringReader(azimuthFile.text))
            {
                string line;
                while ((line = reader.ReadLine()) != null)
                {
                    string[] parts = line.Split(' ');
                    if (parts.Length == 2)
                    {
                        // Parse the time and azimuth
                        TimeSpan timeOfDay = DateTime.ParseExact(parts[0], "yyyy-MM-ddTHH:mm:ssZ", CultureInfo.InvariantCulture).TimeOfDay;
                        float azimuth = float.Parse(parts[1]);
                        azimuthSchedule.Add(new KeyValuePair<TimeSpan, float>(timeOfDay, azimuth));
                    }
                }
            }

            Debug.Log("Azimuth schedule loaded successfully.");
        }
        catch (Exception e)
        {
            Debug.LogError($"Error loading azimuth schedule: {e.Message}");
        }
    }

    void SetInitialAzimuth()
    {
        // Get the current time of day
        TimeSpan currentTimeOfDay = DateTime.UtcNow.TimeOfDay;

        // Find the closest preceding azimuth entry
        for (int i = 0; i < azimuthSchedule.Count - 1; i++)
        {
            if (currentTimeOfDay >= azimuthSchedule[i].Key && currentTimeOfDay < azimuthSchedule[i + 1].Key)
            {
                currentIndex = i;
                break;
            }
        }

        // Set the initial azimuth and start interpolation
        if (currentIndex < azimuthSchedule.Count - 1)
        {
            currentAzimuth = azimuthSchedule[currentIndex].Value;
            transform.rotation = Quaternion.Euler(0f, currentAzimuth, 0f);
        }
        else
        {
            Debug.LogWarning("Current time is outside the range of the azimuth schedule.");
        }
    }

    void SmoothUpdateAzimuth()
    {
        if (currentIndex < azimuthSchedule.Count - 1)
        {
            // Get the current and next azimuth entries
            TimeSpan currentTime = DateTime.UtcNow.TimeOfDay;
            TimeSpan startTime = azimuthSchedule[currentIndex].Key;
            TimeSpan endTime = azimuthSchedule[currentIndex + 1].Key;

            float startAzimuth = azimuthSchedule[currentIndex].Value;
            float endAzimuth = azimuthSchedule[currentIndex + 1].Value;

            // Calculate the interpolation progress
            float duration = (float)(endTime - startTime).TotalSeconds;
            float elapsed = (float)(currentTime - startTime).TotalSeconds;

            if (duration > 0)
            {
                lerpProgress = Mathf.Clamp01(elapsed / duration);
                float interpolatedAzimuth = Mathf.Lerp(startAzimuth, endAzimuth, lerpProgress);

                // Rotate the object to the interpolated azimuth
                antennaBase.localRotation = Quaternion.Euler(0f, interpolatedAzimuth, 0f);

                // Update the current azimuth
                currentAzimuth = interpolatedAzimuth;
            }

            // Move to the next segment when interpolation is complete
            if (currentTime >= endTime)
            {
                currentIndex++;
                lerpProgress = 0f; // Reset progress for the next segment
            }
        }
        else
        {
            Debug.Log("End of azimuth schedule reached.");
        }
    }
}

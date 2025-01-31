from peewee import *

DATABASE = 'cebreros.db'

# create a peewee database instance -- our models will use this database to
# persist information
database = SqliteDatabase(DATABASE)

# model definitions -- the standard "pattern" is to define a base model class
# that specifies which database to use.  then, any subclasses will automatically
# use the correct storage. for more information, see:
# https://charlesleifer.com/docs/peewee/peewee/models.html#model-api-smells-like-django
class BaseModel(Model):
    class Meta:
        database = database

# the mission model specifies its fields (or columns) declaratively, like django
class Mission(BaseModel):
    name = CharField(unique=True)
    acronym = CharField()
    spacecraft = CharField()
    description = CharField()
    launch_date = DateTimeField()


# a dead simple one-to-many relationship: one user has 0..n messages, exposed by
# the foreign key.  because we didn't specify, a users messages will be accessible
# as a special attribute, User.message_set
class Contact(BaseModel):
    mission = ForeignKeyField(Mission, backref='contacts')
    content = TextField()
    start = DateTimeField()
    end = DateTimeField()


# simple utility function to create tables
def create_tables():
    with database:
        database.create_tables([Mission, Contact])

create_tables()
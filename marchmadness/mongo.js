conn = new Mongo()
db = conn.getDB("test")

/*selectall = db.marchmadness.find();
while ( selectall.hasNext()) {
   printjson( selectall.next() );
}*/

// Insert one game into the collection marchmadness
insert = db.marchmadness.insert([
  {
    "Year":2035,
    "Round":6,
    "Region Number":1,
    "Region Name":"Championship",
    "SeedL":1,
    "ScoreL":83,
    "TeamL":"Duke",
    "TeamR":"Loyola-Chicago",
    "ScoreR":75,
    "SeedR":11
  }
])

// Select that game from the collection
selectsome = db.marchmadness.find({"Year" : 2035});
while ( selectsome.hasNext() ) {
   printjson( selectsome.next() );
}

// Delete all games that happened in the year 2035
db.marchmadness.deleteMany({"Year":2035});

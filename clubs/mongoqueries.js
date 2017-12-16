conn = new Mongo()
db = conn.getDB("test")

/*selectall = db.basicinfo.find();
while ( selectall.hasNext() ) {
   printjson( selectall.next() );
}

selectsome = db.basicinfo.find({"FirstName" : "Sam"});
while ( selectsome.hasNext() ) {
   printjson( selectsome.next() );
}

//removeall = db.basicinfo.remove({});

insert = db.basicinfo.insert({"test":"passed"})
insertafew = db.basicinfo.insert([
  {"newinsert":"here"},
  {_id:20,"OnewithID":"yep"}
])*/

join = db.basicinfo.aggregate([{$lookup:{from:"haircolors", localField: "ColorID", foreignField: "Hair Color", as: "colormatches"}}])

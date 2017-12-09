conn = new Mongo()
db = conn.getDB("test")

selectall = db.basicinfo.find();
while ( selectall.hasNext() ) {
   printjson( selectall.next() );
}

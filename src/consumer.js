const { MongoClient } = require("mongodb");
const { inspect } = require("util");

async function run() {
  const client = new MongoClient("mongodb://localhost:35001");

  await client.connect();

  const db = client.db("Tutorial1");
  const ordersCollection = db.collection("orders");

  const changeStream = ordersCollection.watch();

  console.log("Change stream is active for Tutorial1.orders. Now monitoring...");

  changeStream.on("change", (change) => {
    console.log(inspect(change, { depth: null, colors: true }));
  });
}

run().catch(console.error);

const { MongoClient } = require("mongodb");
const util = require("util");

async function run() {
  const client = new MongoClient("mongodb://localhost:35001");

  try {
    await client.connect();

    const db = client.db("Tutorial1");
    const ordersCollection = db.collection("orders");

    const changeStream = ordersCollection.watch();

    console.log("Change stream is active for Tutorial1.orders. Now monitoring...");

    changeStream.on("change", async (change) => {
      console.log(util.inspect(change, { depth: null, colors: true }));
    });
  } catch (error) {
    console.error(error);
  }
}

run().catch(console.error);

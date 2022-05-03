const express = require("express");
// const { CLIENT_FOUND_ROWS } = require("mysql/lib/protocol/constants/client");
const { conn } = require("./config/DBconfig");
const app = express();

const productRouter = require("./routes/productRouter");

app.use(express.json());
app.use("/employee", productRouter);

const port = process.env.PORT || 5000;

const start = () => {
  conn.getConnection((err) => {
    if (err) {
      console.log(err);
    } else {
      console.log("Index");
      console.log("DB Connected");
    }
  });

  app.listen(port, () => {
    console.log(`Listning TO PORT ${port}`);
  });
};

start();

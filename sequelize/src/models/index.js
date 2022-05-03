const { DBconfig } = require("../config/DBconfig");

const { Sequelize, DataTypes } = require("sequelize");

const sequelize = new Sequelize(
  DBconfig.database,
  DBconfig.user,
  DBconfig.password,
  {
    host: DBconfig.host,
    dialect: DBconfig.dialect,
    operatorsAliases: false,
  }
);

sequelize
  .authenticate()
  .then(() => {
    console.log("Authenticated");
  })
  .catch((err) => {
    console.log("err", err);
  });

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

// product - table name

db.products = require("./productModel")(sequelize, DataTypes);
db.review = require("./reviewModel")(sequelize, DataTypes);

db.sequelize.sync({ force: false }).then(() => {
  console.log("resync");
});

module.exports = db;

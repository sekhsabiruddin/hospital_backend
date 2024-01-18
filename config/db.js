const { Sequelize } = require("sequelize");

const sequelize = new Sequelize("hospital", "root", "9732376133Sabir@", {
  host: "localhost",
  dialect: "mysql",
});

module.exports = sequelize;

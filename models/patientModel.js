const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");
const { Psychiatrist } = require("./psychiatristModel");
const Patient = sequelize.define("Patient", {
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  address: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  phoneNumber: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  patientPhoto: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

// Add the association with Psychiatrist
Patient.belongsTo(Psychiatrist);

module.exports = { Patient };

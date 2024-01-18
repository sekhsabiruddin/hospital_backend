const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");
const { Psychiatrist } = require("../models/psychiatristModel");
const { Patient } = require("../models/patientModel");
const Hospital = sequelize.define("Hospital", {
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

Hospital.hasMany(Psychiatrist);
Psychiatrist.belongsTo(Hospital);

Psychiatrist.hasMany(Patient);
Patient.belongsTo(Psychiatrist);

module.exports = { Hospital, Psychiatrist, Patient };

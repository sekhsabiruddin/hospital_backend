const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Psychiatrist = sequelize.define("Psychiatrist", {
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

Psychiatrist.prototype.getPatientsCount = async function () {
  const Patient = require("./patientModel");
  const patientsCount = await Patient.count({
    where: { PsychiatristId: this.id },
  });
  return patientsCount;
};

module.exports = { Psychiatrist };

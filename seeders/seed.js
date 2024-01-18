const sequelize = require("../config/db");
const { Hospital } = require("../models/hospitalModel");
const { Psychiatrist } = require("../models/psychiatristModel");

const seedDatabase = async () => {
  await sequelize.sync({ force: true });

  const hospitals = await Hospital.bulkCreate([
    { name: "Apollo Hospitals" },
    { name: "Jawaharlal Nehru Medical College and Hospital" },
    { name: "Indira Gandhi Institute of Medical Sciences" },
    { name: "AIIMS - All India Institute Of Medical Science" },
  ]);

  const indianNames = [
    "Rohan Mittal",
    "Aishwarya Thakur",
    "Sameer Desai",
    "Ananya Kapoor",
    "Arjun Singh",
    "Roshni Sharma",
    "Aditya Kapoor",
    "Siddharth Deshmukh",
    "Riya Banerjee",
    "Abhinav Kapoor",
    "Rohan Mittal",
    "Aishwarya Thakur",
    "Sameer Desai",
    "Ananya Kapoor",
    "Arjun Singh",
    "Rohan Mittal",
    "Aishwarya Thakur",
    "Sameer Desai",
    "Ananya Kapoor",
    "Arjun Singh",
  ];

  let psychiatristData = [];

  hospitals.forEach((hospital, index) => {
    for (let i = 1; i <= 5; i++) {
      const psychiatristName = indianNames.shift();
      psychiatristData.push({
        name: `Dr. ${psychiatristName}`,
        HospitalId: hospital.id,
      });
    }
  });

  const psychiatrists = await Psychiatrist.bulkCreate(psychiatristData);

  console.log("Database seeded successfully");
};

// Export the seedDatabase function
module.exports = { seedDatabase };

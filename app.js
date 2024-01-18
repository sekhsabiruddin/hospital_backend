const express = require("express");
const bodyParser = require("body-parser");
const sequelize = require("./config/db");
const app = express();
const patientRouter = require("./routers/patientRouter");
const hospitalRouter = require("./routers/hostpitalRouter");
const { seedDatabase } = require("./seeders/seed");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Synchronize Sequelize models with the database
seedDatabase();

sequelize
  .sync()
  .then(() => {
    console.log("Database synchronized");
  })
  .catch((error) => {
    console.error("Error synchronizing database:", error);
  });

app.use("/api/patients", patientRouter);
app.use("/api/hospitals", hospitalRouter);

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

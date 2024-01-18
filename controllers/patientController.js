// controllers/patientController.js
const { Patient } = require("../models/patientModel");
const { validatePatient } = require("../utils/validation");

exports.getAllPatients = async (req, res) => {
  try {
    const patients = await Patient.findAll();
    res.json({ status: "success", data: patients });
  } catch (error) {
    console.error(error);
    res.status(500).json({ status: "error", message: "Internal Server Error" });
  }
};

exports.registerPatient = async (req, res) => {
  try {
    // Validate input using the middleware
    await validatePatient(req, res, async () => {
      const {
        name,
        address,
        email,
        phoneNumber,
        password,
        patientPhoto,
        PsychiatristId,
      } = req.body;

      // Check if the email is already registered
      const existingPatient = await Patient.findOne({ where: { email } });

      if (existingPatient) {
        return res
          .status(400)
          .json({ status: "error", message: "Email is already registered" });
      }

      // Create patient if email is not registered
      const patient = await Patient.create({
        name,
        address,
        email,
        phoneNumber,
        password,
        patientPhoto,
        PsychiatristId,
      });

      res.json({ status: "success", data: patient });
    });
  } catch (error) {
    console.error("Error registering patient:", error);

    let errorMessage = "Internal Server Error";
    if (error.name === "SequelizeValidationError") {
      errorMessage = "Validation Error. Check your input data.";
    }

    res.status(500).json({ status: "error", message: errorMessage });
  }
};

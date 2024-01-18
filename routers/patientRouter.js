const express = require("express");
const router = express.Router();
const patientController = require("../controllers/patientController");

// Fetch all patients
router.get("/", patientController.getAllPatients);

// Register a new patient
router.post("/register", patientController.registerPatient);

// Add more routes for updating, deleting, and fetching a specific patient

module.exports = router;

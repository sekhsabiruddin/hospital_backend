// hospitalRouter.js
const express = require("express");
const router = express.Router();
const hospitalController = require("../controllers/hospitalController");

// Fetch all hospitals
router.get("/", hospitalController.getAllHospitals);

// Fetch all psychiatrists and patitent with hopital id
router.get("/:hospitalId", hospitalController.getPsychiatristsForHospital);

module.exports = router;

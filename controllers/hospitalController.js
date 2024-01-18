const { Hospital, Psychiatrist, Patient } = require("../models/hospitalModel");

exports.getAllHospitals = async (req, res) => {
  try {
    const hospitals = await Hospital.findAll();
    res.json({ status: "success", data: hospitals });
  } catch (error) {
    console.error(error);
    res.status(500).json({ status: "error", message: "Internal Server Error" });
  }
};
// hospitalController.js

exports.getPsychiatristsForHospital = async (req, res) => {
  // console.log("==================>HI I AM HITING<=================");
  try {
    const hospitalId = req.params.hospitalId;

    // Find the hospital by ID
    const hospital = await Hospital.findByPk(hospitalId);
    console.log("hospital id is ", hospital);
    if (!hospital) {
      return res
        .status(404)
        .json({ status: "error", message: "Hospital not found" });
    }

    const psychiatrists = await Psychiatrist.findAll({
      where: { HospitalId: hospitalId },
      include: [
        {
          model: Patient,
        },
      ],
    });

    // Calculate total psychiatrist count and total patients count
    const totalPsychiatrists = psychiatrists.length;
    const totalPatients = psychiatrists.reduce(
      (sum, psychiatrist) => sum + psychiatrist.Patients.length,
      0
    );

    // Prepare API response
    const response = {
      hospitalName: hospital.name,
      totalPsychiatristCount: totalPsychiatrists,
      totalPatientsCount: totalPatients,
      psychiatristsDetails: psychiatrists.map((psychiatrist) => ({
        id: psychiatrist.id,
        name: psychiatrist.name,
        patientsCount: psychiatrist.Patients.length,
      })),
    };

    res.json({ status: "success", data: response });
  } catch (error) {
    console.error(error);
    res.status(500).json({ status: "error", message: "Internal Server Error" });
  }
};

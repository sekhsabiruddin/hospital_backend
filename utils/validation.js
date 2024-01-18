const Joi = require("joi");

const validatePatient = (req, res, next) => {
  const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{8,}$/;

  const schema = Joi.object({
    name: Joi.string().required(),
    address: Joi.string().min(10).required(),
    email: Joi.string().email().required(),
    phoneNumber: Joi.string()
      .pattern(/^[0-9]{10,14}$/)
      .required(),
    password: Joi.string().pattern(passwordRegex).required(),
    PsychiatristId: Joi.number().integer().min(1).max(20).required(),
    patientPhoto: Joi.string().required(), // validate base64 encoding
  });

  const { error } = schema.validate(req.body);

  if (error) {
    return res.status(400).json({ errors: error.details });
  }

  next();
};

module.exports = {
  validatePatient,
};

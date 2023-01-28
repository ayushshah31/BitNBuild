const patientAuthController = require("../app/http/controllers/patient/authController");
const doctorAuthController = require("../app/http/controllers/doctor/authController");
const doctorController = require("../app/http/controllers/doctor/doctorController");

// Middlewares
const verifyToken = require("../app/http/middlewares/auth");

const initRoutes = (app) => {
    // Authentication
    app.post('/auth/patient/login', patientAuthController().postLogin);
    app.post('/auth/patient/register', patientAuthController().postRegister);

    app.get('/fetch-doctors', doctorController().fetchDoctors);

    app.post('/auth/doctor/login', doctorAuthController().postLogin);
}

module.exports = initRoutes;
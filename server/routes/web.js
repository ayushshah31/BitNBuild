const patientAuthController = require("../app/http/controllers/patient/authController");
const doctorAuthController = require("../app/http/controllers/doctor/authController");
const doctorController = require("../app/http/controllers/doctor/doctorController");
const appointmentController = require("../app/http/controllers/appointment/appointmentController");
// Middlewares
const verifyToken = require("../app/http/middlewares/auth");

const initRoutes = (app) => {
    // Authentication
    app.post('/auth/patient/login', patientAuthController().postLogin);
    app.post('/auth/patient/register', patientAuthController().postRegister);

    app.get('/fetch-doctors', doctorController().fetchDoctors);

    app.post('/auth/doctor/login', doctorAuthController().postLogin);

    app.post('/appointment', appointmentController().store);

    app.get('/appointment/:id', appointmentController().index);

    app.post('/appointment/:appointmentId/:status', appointmentController().update);
}

module.exports = initRoutes;
// Controllers
const authController = require("../app/http/controllers/authController");
const doctorController = require("../app/http/controllers/doctors/doctorController");

// Middlewares
const verifyToken = require("../app/http/middlewares/auth");

const initRoutes = (app) => {
    // Authentication
    app.post('/auth/patient/login', authController().postLogin);
    app.post('/auth/patient/register', authController().postRegister);
    app.get('/fetch-doctors', doctorController().fetchDoctors);
}

module.exports = initRoutes;
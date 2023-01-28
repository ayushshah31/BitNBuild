// Controllers
const authController = require("../app/http/controllers/authController");

// Middlewares
const verifyToken = require("../app/http/middlewares/auth");

const initRoutes = (app) => {
    // Authentication
    app.post('/auth/patient/login', authController().postLogin);
    app.post('/auth/patient/register', authController().postRegister);
}

module.exports = initRoutes;
const Doctor = require('../../../models/doctor');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

const authController = () => {
    return {
        async postLogin(req, res) {
            const { email, password } = req.body;
            console.log(req.body);
            try {
                // Check Doctor
                const doctor = await Doctor.findOne({ email });
                if(!doctor) return res.status(400).json({ message: 'Doctor does not exist.' });
        
                // Check Password Match
                const isMatch = await bcrypt.compare(password, doctor.password);
                if(!isMatch) return res.status(300).json({ message: 'Invalid credentials.' })
        
                // Generate JWT Token
                const token = jwt.sign({ id: doctor._id }, process.env.JWT_SECRET);
                delete doctor.password;
        
                return res.status(200).json({ token, user: doctor });
            } catch (error) {
                return res.status(500).json({ error: error.message });
            }
        },
        // async postRegister(req, res) {
        //     const { name, email, password } = req.body;

        //     try {
        //         // Check if email exists
        //         const checkEmail = await Doctor.exists({ email: email });
        //         if(checkEmail) {
        //             return res.status(409).json({ message: 'Email already taken!'});
        //         }

        //         // Hash Password
        //         const salt = await bcrypt.genSalt();
        //         const hashedPassword = await bcrypt.hash(password, salt);

        //         // Create Doctor
        //         const newPatient = new Doctor({
        //             name,
        //             email,
        //             password: hashedPassword,
        //         });

        //         const savedPatient = await newPatient.save();
        //         return res.status(201).json(savedPatient);
        //     } catch (error) {
        //         return res.status(500).json({ error: error.message });
        //     }
        // }
    }
}

module.exports = authController;
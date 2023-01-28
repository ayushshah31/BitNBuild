const User = require('../../models/user');
const bcrypt = require('bcrypt');

const authController = () => {
    return {
        async postLogin(req, res) {
            const { email, password } = req.body;

            try {
                // Check User
                const user = await User.findOne({ email });
                if(!user) return res.status(400).json({ message: 'User does not exist.' });
        
                // Check Password Match
                const isMatch = await bcrypt.compare(password, user.password);
                if(!isMatch) return res.status(300).json({ message: 'Invalid credentials.' })
        
                // Generate JWT Token
                const token = jwt.sign({ id: user._id }, process.env.JWT_SECRET);
                delete user.password;
        
                return res.status(200).json({ token, user });
            } catch (error) {
                return res.status(500).json({ error: error.message });
            }
        },
        async postRegister(req, res) {
            const { name, email, password } = req.body;

            try {
                // Check if email exists
                const checkEmail = await User.exists({ email: email });
                if(checkEmail) {
                    return res.status(409).json({ message: 'Email already taken!'});
                }

                // Hash Password
                const salt = await bcrypt.genSalt();
                const hashedPassword = await bcrypt.hash(password, salt);

                // Create User
                const user = new User({
                    name,
                    email,
                    password: hashedPassword,
                });

                const savedUser = await newUser.save();
                return res.status(201).json(savedUser);
            } catch (error) {
                return res.status(500).json({ error: error.message });
            }
        }
    }
}

module.exports = authController;
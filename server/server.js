const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const cors = require('cors');
const dotenv = require('dotenv');

/* CONFIGURATIONS  */
dotenv.config();

const app = express();
app.use(express.json());
app.use(bodyParser.json({ limit: "30mb", extended: true }));
app.use(bodyParser.urlencoded({ limit: "30mb", extended: true }));
app.use(cors());

/* ROUTES */
require('./routes/web')(app);

/* MONGOOSE SETUP */
const PORT = process.env.PORT || 6001;

try {
    mongoose.set('strictQuery', false);
    mongoose.connect(process.env.MONGO_URL, {
        useNewUrlParser: true,
        useUnifiedTopology: true,
    });
    console.log('Database is connected...');
    
    app.listen(PORT, () => {
        console.log(`Server Port: ${PORT}`);
    });
} catch (error) {
    console.log('Database not connected...')
}
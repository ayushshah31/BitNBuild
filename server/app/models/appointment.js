const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const appointmentSchema = new Schema(
    {
        patientId: {
            type: mongoose.Schema.Types.ObjectId,
            ref: 'Patient',
            required: true,
        },
        doctorId: {
            type: mongoose.Schema.Types.ObjectId,
            ref: 'Doctor',
            required: true,
        },
        startTime: {
            type: String,
            default: null
        },
        endTime: {
            type: String,
            default: null
        },
        date: {
            type: String,
            default: null
        },
        status: {
            type: String,
            required: true,
        },
    }, {
        timestamps: true,
    }
);

module.exports = mongoose.model('Appointment', appointmentSchema);
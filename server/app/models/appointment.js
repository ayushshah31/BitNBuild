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
            type: Date,
            default: null
        },
        endTime: {
            type: Date,
            default: null
        },
        date: {
            type: Date,
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
// const Doctor = require('../../../models/doctor');
// const Patient = require('../../../models/patient');
const Appointment = require('../../../models/appointment');

const appointmentController = () => {
    return{
        async store(req, res) {
            const { patientId, doctorId } = req.body;

            try {
                const appointment = new Appointment({
                    patientId,
                    doctorId,
                    status: 'pending',
                });
    
                const savedAppointment = await appointment.save();
                return res.status(201).json(savedAppointment);
            } catch (error) {
                return res.status(500).json({ error: error.message });
            }
        },
        async index(req, res) {
            const { id } = req.params;

            try {
                const appointment = await Appointment.find({ doctorId: id, status: 'pending' }, null, {
                    sort: {
                        createdAt: -1
                    }
                });

                res.header('Cache-Control', 'no-cache, private, no-store, must-revalidate, max-stale=0, post-check=0, pre-check=0');

                return res.status(200).json(appointment);
            } catch (error) {
                return res.status(500).json({ error: error.message });
            }
        },
        async update(req, res) {
            const { id, appointmentId, status } = req.params;

            try {
                const updatedAppointment = await Appointment.updateOne({ doctorId: id, _id: appointmentId }, {
                    $set: {
                        status,
                    }
                });

                return res.status(204).json({ message: 'Success!' })
            } catch (error) {
                return res.status(500).json({ error: error.message });
            }
        }
    }
}

module.exports = appointmentController;
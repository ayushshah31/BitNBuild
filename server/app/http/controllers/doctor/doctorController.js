const doctors = require('../../../models/doctor');

const doctorController = () => {
    return {
        async fetchDoctors(req, res){
            try{
                const doctor = await doctors.find({})
                res.status(200).json(doctor);
            }catch(err){
                console.log(err.message);
                res.status(500).send("Some error occured")
            }
        }
    }
}

module.exports = doctorController;
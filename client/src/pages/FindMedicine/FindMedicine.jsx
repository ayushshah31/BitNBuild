import React, { useState } from 'react'
import Navbar from '../../components/Navbar';
import axios from 'axios';

const FindMedicine = () => {
  const [medicine, setMedicine] = useState('');
  const [data, setData] = useState();
  console.log(process.env.RAPIDAPI_KEY);

  const getMedicineData = async () => {
    console.log(medicine);
    if(medicine === '') {
      return console.log('Enter medicine')
    }
    const options = {
      method: 'GET',
      url: 'https://drug-info-and-price-history.p.rapidapi.com/1/druginfo',
      params: {drug: `${medicine}`},
      headers: {
        'X-RapidAPI-Key': 'edfd4b0645mshc4b607cd2864adfp1aa82ajsn0394745ced1c',
        'X-RapidAPI-Host': 'drug-info-and-price-history.p.rapidapi.com'
      }
    };

    try {
      const response = await axios.request(options);

      const data = response.data[0];
      const obj = {
        name: data.brand_name,
        genericName: data.generic_name,
        manufacturerName: data.openfda.manufacturer_name[0],
        taken: data.route[0],
        activeIngredients: {
          name: data.active_ingredients[0].name,
          strength: data.active_ingredients[0].strength,
        },
        type: data.product_type,
        class: data.openfda.pharm_class_cs ? data.openfda.pharm_class_cs[0] : '',
      }

      console.log(obj)
      setData(obj);
    } catch (error) {
      console.log(error);
    }
  }

  return (
    <div>
      <Navbar />
      <div className='mt-2'>
        <input type="text" onChange={(e) => { setMedicine(e.target.value) }} />
        <button type='button' onClick={ getMedicineData }>Submit</button>
      </div>

      { data ? (
        <div>
          Name: {data.name} <br />
          Generic Name: {data.genericName} <br />
          Manufacturer Name: {data.manufacturerName} <br />
          How to take: {data.taken} <br />
          Ingridient Name: {data.activeIngredients.name} <br />
          Ingrident Strength: {data.activeIngredients.strength} <br />
          Type: {data.type} <br />
          { data.class && (
            <>
              Classification: {data.class} <br />
            </>
          )}
        </div>
      ) : (
        <div>
          Hello
        </div>
      )}
    </div>
  )
}

export default FindMedicine;
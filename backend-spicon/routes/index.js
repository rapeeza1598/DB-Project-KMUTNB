var express = require('express');
var router = express.Router();
var client = require('../databasepg/database.js');
var cors = require("cors");

router.use(cors());
router.use(express.json());

// Get all products


// POST a new product
router.post('/employee', async (req, res) => {
  try{
    const {employee_name, employee_surname, employee_phone, employee_address, employee_citizen_id, employee_position} = req.body;
    console.log(req.body);
    const newemployee = await client.query("INSERT INTO employee(employee_name,employee_surname,employee_phone,employee_address,employee_citizen_id,employee_position) VALUES($1,$2,$3,$4,$5,$6)",[employee_name,employee_surname,employee_phone,employee_address,employee_citizen_id,employee_position]);
    res.json(req.body);
  } catch(err){
    console.error(err.message);
  }
});

router.post('/client', async (req, res) => {
  try{
    const {client_name,client_surname,client_phone,client_address,client_citizen_id} = req.body;
    console.log(req.body);
    const newclient = await client.query("INSERT INTO client(client_name,client_surname,client_phone,client_address,client_citizen_id) VALUES($1,$2,$3,$4,$5)",[client_name,client_surname,client_phone,client_address,client_citizen_id]);
    res.json(req.body);
  }catch(err){
    console.error(err.message)
  }
});
// PUT update a product

// DELETE a product

// 

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

module.exports = router;

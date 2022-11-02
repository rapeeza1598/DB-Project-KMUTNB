var express = require('express');
var router = express.Router();
var client = require('../databasepg/database.js');
var cors = require("cors");

router.use(cors());
router.use(express.json());

// Get all products


// POST a new product
router.get('/employee', async (req, res) => {
  try{
    console.log(req.body);
    const newemployee = await client.query("SELECT * FROM public.employee");
    res.json(newemployee.rows);
  } catch(err){
    console.error(err.message);
  }
});
router.post('/employee_fill', async (req, res) => {
  try{
    const {employee_id} = req.body;
    console.log(req.body);
    const newemployee = await client.query("SELECT employee_name, employee_surname, employee_phone, employee_address, employee_citizen_id, employee_position FROM public.employee WHERE (employee_id = $1);", [employee_id]);
    res.json(newemployee.rows);
  } catch(err){
    console.error(err.message);
  }
});
router.put('/employee_update', async (req, res) => {
  try{
    const {employee_id, employee_name, employee_surname, employee_phone, employee_address, employee_citizen_id, employee_position} = req.body;
    console.log(req.body);
    const newemployee = await client.query("UPDATE public.employee SET employee_name = $1, employee_surname = $2, employee_phone = $3, employee_address = $4, employee_citizen_id = $5, employee_position = $6 WHERE (employee_id = $7);", [employee_name, employee_surname, employee_phone, employee_address, employee_citizen_id, employee_position, employee_id]);
    res.json(newemployee.rows);
  } catch(err){
    console.error(err.message);
  }
});
router.post('/employee', async (req, res) => {
  try{
    const {employee_name, employee_surname, employee_phone, employee_address, employee_citizen_id, employee_position} = req.body;
    console.log(req.body);
    const newemployee = await client.query("INSERT INTO public.employee (employee_name, employee_surname, employee_phone, employee_address, employee_citizen_id, employee_position) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *", [employee_name, employee_surname, employee_phone, employee_address, employee_citizen_id, employee_position]);
    res.json(newemployee.rows[0]);
  } catch(err){
    console.error(err.message);
  }
});
router.delete('/employee_delete', async (req, res) => {
  try{
    const {employee_id} = req.body;
    console.log(req.body);
    const newemployee = await client.query("DELETE FROM public.employee WHERE (employee_id = $1);", [employee_id]);
    res.json(newemployee.rows);
  }
  catch(err){
    console.error(err.message);
  }
});

router.get('/client', async (req, res) => {
  try{
    console.log(req.body);
    const newclient = await client.query("SELECT * FROM public.client");
    res.json(newclient.rows);
  } catch(err){
    console.error(err.message);
  }
});
router.post('/client_fill', async (req, res) => {
  try{
    const {client_id} = req.body;
    console.log(req.body);
    const newclient = await client.query("SELECT client_name, client_surname, client_phone, client_address, client_citizen_id FROM public.client WHERE (client_id = $1);", [client_id]);
    res.json(newclient.rows);
  } catch(err){
    console.error(err.message);
  }
});
router.put('/client_update', async (req, res) => {
  try{
    const {client_id, client_name, client_surname, client_phone, client_address, client_citizen_id} = req.body;
    console.log(req.body);
    const newclient = await client.query("UPDATE public.client SET client_name = $1, client_surname = $2, client_phone = $3, client_address = $4, client_citizen_id = $5 WHERE (client_id = $6);", [client_name, client_surname, client_phone, client_address, client_citizen_id, client_id]);
    res.json(newclient.rows);
  } catch(err){
    console.error(err.message);
  }
});
router.post('/client', async (req, res) => {
  try{
    const {client_name, client_surname, client_phone, client_address, client_citizen_id} = req.body;
    console.log(req.body);
    const newclient = await client.query("INSERT INTO public.client (client_name, client_surname, client_phone, client_address, client_citizen_id) VALUES ($1, $2, $3, $4, $5) RETURNING *", [client_name, client_surname, client_phone, client_address, client_citizen_id]);
    res.json(newclient.rows[0]);
  } catch(err){
    console.error(err.message);
  }
});
router.delete('/client_delete', async (req, res) => {
  try{
    const {client_id} = req.body;
    console.log(req.body);
    const newclient = await client.query("DELETE FROM public.client WHERE (client_id = $1);", [client_id]);
    res.json(newclient.rows);
  }
  catch(err){
    console.error(err.message);
  }
});
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
module.exports = router;

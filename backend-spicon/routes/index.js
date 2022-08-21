var express = require('express');
var router = express.Router();
var client = require('../databasepg/database.js');
var cors = require("cors");

router.use(cors());
router.use(express.json());

// Get all products


// POST a new product
router.post('/login', async (req, res) => {
  try{
    const {username, password} = req.body;
    const newlogin = await client.query("INSERT INTO login(username_id,password) VALUES($1,$2)",[username,password]);
    res.json(newlogin);
  } catch(err){
    console.error(err.message);
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

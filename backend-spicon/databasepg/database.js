const {Client} = require('../node_modules/pg');

const client = new Client({
    host: "localhost",
    user: "admin",
    port: 5432,
    password: "root",
    database: "DB_Project"
})

client.connect();

module.exports = client;
// Main file of Libraverse backend
// Licensed as GPL-3.0

// Import all dependencies
const express = require('express');
const bodyParser = require('body-parser');
const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
const mysql = require('mysql');
require('dotenv').config();
const bcrypt = require("bcrypt")
const saltRounds = 12

// Connect to database
var db = mysql.createConnection({
    host: process.env.host,
    user: process.env.user,
    password: process.env.password,
    database: process.env.database
  });

// Test connection
db.connect(function(err) {
  if (err)
  throw err;
  console.log("\x1b[35m Connected to database \x1b[0m ");
});

// GET routes
app.get('/', (req, res) => {
    res.send('Welcome to Libraverse! Plese use an POST endpoint');
});

// POST routes
app.post('/user/login', async (req, res) => {
    if(!req.body.email || !req.body.password)
        res.sendStatus(400);
    else {
    bcrypt.hash(req.body.password, saltRounds).then(hash => {
        sql = `SELECT password FROM users WHERE email LIKE '${req.body.email}'`;
        db.query(sql, function (err, result) {
            if (err) throw err;
            if(result.length == 1)
                bcrypt.compare(req.body.password, result[0].password).then(function(result) {
                    if(result)
                    res.send("Login confirmed");
                    else
                    res.sendStatus(404);
                });
            else
            res.sendStatus(404);
                
        });
    })
    
   
}});

app.listen(3000);
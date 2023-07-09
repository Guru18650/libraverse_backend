// Main file of Libraverse backend
// Licensed as GPL-3.0

// Import all dependencies
const express = require('express');
const bodyParser = require('body-parser');
require('dotenv').config();

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));

// Import routes

const userAuthRouter = require("./routes/userAuth");


// GET routes
app.get('/', (req, res) => {
    res.send('Welcome to Libraverse! Plese use an POST endpoint');
});

// POST routes
app.use("/user/", userAuthRouter);



app.listen(3000);

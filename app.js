// Main file of Libraverse backend
// Licensed as GPL-3.0

// Import all dependencies
const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2/promise')
require('dotenv').config();
var cors = require('cors');

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());

// Import routes
const authRouter = require("./routes/auth");
const booksRouter = require("./routes/books");
const authorsRouter = require("./routes/authors");

// Test database connection
try {
    var db = mysql.createConnection({
        host: process.env.host,
        user: process.env.user,
        password: process.env.password,
        database: process.env.database
    });
} catch (error) {
    console.log(error)
    console.log('\x1b[31m%s\x1b[0m',"CAN'T CONNECT TO DATABASE");
    process.exit();
}
console.log('\x1b[32m%s\x1b[0m',"CONNECTED TO DATABASE");

// GET routes
app.get('/', (req, res) => {
    res.send('Welcome to Libraverse! Plese use an POST endpoint');
});

// POST routes
app.use("/auth/", authRouter);
app.use("/books/", booksRouter);
app.use("/authors/", authorsRouter);
//app.use("/users/", usersRouter);

app.listen(3001);

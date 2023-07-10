// Main file of Libraverse backend
// Licensed as GPL-3.0

// Import all dependencies
const express = require('express');
const bodyParser = require('body-parser');
require('dotenv').config();
var cors = require('cors');

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());

// Import routes

const authRouter = require("./routes/auth");
const booksRouter = require("./routes/books");
const authorsRouter = require("./routes/authors");
//const usersRouter = require("./routes/users");


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

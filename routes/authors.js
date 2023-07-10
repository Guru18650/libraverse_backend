const express = require('express');
const router = express.Router();
const authors = require('../services/authors');

router.post('/', async function(req, res, next) { 
    res.json(await authors.getAllAuthors());
});

router.post('/id', async function(req, res, next) {
    if(req.body.id == null)
        res.json("Fill in all the data", 400);
    else
        res.json(await authors.getAuthorById(req.body.id));
});

module.exports = router;
const express = require('express');
const router = express.Router();
const books = require('../services/books');

router.post('/', async function(req, res, next) {
    res.json(await books.getAllBooks());
})

router.post('/id', async function(req, res, next) {
    if(req.body.id == null)
        res.json("Fill in all the data", 400);
    else
        res.json(await books.getBookById(req.body.id));

});

router.post('/isbn', async function(req, res, next) {
    if(req.body.isbn == null)
        res.json("Fill in all the data", 400);
    else{
        const isbn = req.body.isbn;
        if(isbn.length == 13)
            res.json(await books.getBooksByISBN(isbn));
        else if(isbn.length == 10)
            res.json(await books.getBooksByISBN(isbn, "isbn_10"))
        else
            res.json("Invalid ISBN", 400);
    }
});

module.exports = router;
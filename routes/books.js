const express = require('express');
const router = express.Router();
const books = require('../services/books');

router.post('/all', async function(req, res, next) {
    res.json(await books.getAllBooks());
})

router.post('/id', async function(req, res, next) {
    if(req.body.id == null)
        res.json("Fill in all the data", 400);
    else
        res.json(await books.getBookById(req.body.id));

});

router.post('/isbn', async function(req, res, next) {
    console.log(req.body)
    if(req.body.isbn == null)
        res.json("Fill in all the data", 400);
    else{
        const isbn = req.body.isbn;
        if(isbn.length == 13)
            data = await books.getBooksByISBN(isbn)
        else if(isbn.length == 10)
            data = await books.getBooksByISBN(isbn, "isbn_10")
        else
            data = {message:"Invalid ISBN", status:400}
        res.json(data.rows, data.status);
    }
});

module.exports = router;
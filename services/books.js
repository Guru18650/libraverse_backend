const db = require('./db');
const axios = require('axios');

async function getBookById(id) {
    const rows = await db.query(`SELECT * FROM books WHERE book_id = ${id}`);
    if(rows.length == 0)
        return "Book not found"
    return rows[0];
}

async function getBooksByISBN(isbn, mode = "isbn_13") {
    const rows = await db.query(`SELECT * FROM books WHERE ${mode} = ${isbn}`);
    if(rows.length == 0)
        return {message:"Book not found",status:404}
    return {rows,status:200}
}

async function getAllBooks() {
    const rows = await db.query(`SELECT isbn_13, title, author, publisher, length FROM books`);
    return rows;
}

async function olFetch(isbn) {
    const rows = await axios.get(`https://openlibrary.com/books/${isbn}.json`);
    return rows;
}

module.exports = {
    getBookById,
    getBooksByISBN,
    getAllBooks,
    olFetch
}

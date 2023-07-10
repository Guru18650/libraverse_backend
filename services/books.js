const db = require('./db');


async function getBookById(id) {
    const rows = await db.query(`SELECT * FROM books WHERE book_id = ${id}`);
    if(rows.length == 0)
        return "Book not found"
    return rows[0];
}

async function getBooksByISBN(isbn, mode = "isbn_13") {
    const rows = await db.query(`SELECT * FROM books WHERE ${mode} = ${isbn}`);
    if(rows.length == 0)
        return "Book not found"
    return rows;
}

async function getAllBooks() {
    const rows = await db.query(`SELECT * FROM books`);
    return rows;
}

module.exports = {
    getBookById,
    getBooksByISBN,
    getAllBooks
}

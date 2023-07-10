const db = require('./db');

async function getAuthorById(id) {
    const rows = await db.query(`SELECT * FROM authors WHERE author_id = ${id}`);
        if(rows.length == 0)
        return "Author not found"
    return rows[0];
}

async function getAllAuthors() {
    const rows = await db.query(`SELECT * FROM authors`);
    return rows;
}

module.exports = {
    getAuthorById,
    getAllAuthors
}
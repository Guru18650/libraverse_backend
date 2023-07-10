const db = require('./db');

async function getUserById(id) { 
    const rows = await db.query(`SELECT username, first_name, last_name, gender, nationality, description, profile_image FROM users WHERE id = ${id}`);
    if(rows.length == 0)
        return "User not found"
    return user.rows[0];
}


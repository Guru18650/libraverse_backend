const db = require('./db');
const bcrypt = require('bcrypt');

async function login(email, pass){
    const rows = await db.query(`SELECT * FROM users WHERE email LIKE '${email}'`);
    if(rows.length == 0)
        return "Account not found";
    if(bcrypt.compare(pass, rows[0].password))
        return rows[0];
    return "Account not found";
}

async function register(email, pass, username){
    const rows = await db.query(`SELECT * FROM users WHERE email LIKE '${email}' OR username LIKE '${username}'`);
    if(rows.length > 0)
        return "Account with email or username like this exists"
    const passwordH = await bcrypt.hash(pass,12);
    await db.query(`INSERT INTO users (user_id, username, password, email) VALUES (NULL,'${username}','${passwordH}','${email}')`);
    return "Success";
}

module.exports = {
    login,
    register
}
const db = require('./db');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

async function login(email, pass){
    const rows = await db.query(`SELECT * FROM users WHERE email LIKE '${email}'`);
    if(rows.length == 0)
        return "Account not found";
    if(await bcrypt.compare(pass, rows[0].password)){
        const user = {
            id: rows[0].user_id,
            email: rows[0].email
        }
        const token = jwt.sign(user, process.env.jsonkey, {expiresIn: '4 d'});
        return token;
    }
       
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

async function verify(token){
    try {
        const v = jwt.verify(token, process.env.jsonkey);
        return {authenticated: "true"}
    } catch (error) {
        return {authenticated: "false"}
    }
}

async function getAllUsers(){
    const rows = await db.query(`SELECT * FROM users`);
    return rows;
}

module.exports = {
    login,
    register,
    getAllUsers,
    verify
}
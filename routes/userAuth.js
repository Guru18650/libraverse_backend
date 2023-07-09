const express = require('express');
const router = express.Router();
const userAuth = require('../services/userAuth');

router.post('/login', async function(req, res, next) {
    if(req.body.email == null || req.body.password == null)
        res.json("Fill in all the data", 400);
    else
        res.json(await userAuth.login(req.body.email, req.body.password));
});

router.post('/register', async function(req, res, next) {
    if(req.body.email == null || req.body.password == null || req.body.username == null)
        res.json("Fill in all the data", 400);
    else
        res.json(await userAuth.register(req.body.email, req.body.password, req.body.username));
});

module.exports = router;
const express = require('express');
const router = express.Router();
const userAuth = require('../services/auth');

router.post('/', async function(req, res, next) {
    res.json(await userAuth.getAllUsers());
});

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

router.post('/verify', async function(req, res, next) {
    console.log(req.body);

    if(req.body.token == null)
        res.json("Fill in all the data", 400);
    else
        res.json(await userAuth.verify(req.body.token));
});

module.exports = router;
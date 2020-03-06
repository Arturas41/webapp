const auth = require('../middleware/auth.js');
const {Platform, validate} = require('../models/platforms');
const mongoose = require('mongoose');
const express = require('express');
const router = express.Router();

router.post('/', auth, async (req, res) => {
    const { error } = validate(req.body);
    if (error) {
        return res.status(400).send(error.details[0].message);
    }
 
    let platform = new Platform({ name: req.body.name });
    platform = await platform.save();
 
    res.send(platform);
});

router.get('/', async (req, res) => {
    const platforms = await Platform.find().sort('name');
    res.send(platforms);
});

router.put('/:id', async (req, res) => {
    const { error } = validate(req.body);
    if (error) {
        return res.status(400).send(error.details[0].message);
    }
 
    const platform = await Platform.findByIdAndUpdate(req.params.id, { name: req.body.name }, {
        new: true
    });
 
    if (!platform) {
        return res.status(404).send('That platform ID was not found');
    }
 
    res.send(platform);
});

router.delete('/:id', auth, async (req, res) => {
    const platform = await Platform.findByIdAndRemove(req.params.id);
 
    if (!platform) {
        return res.status(404).send('That platform ID was not found');
    }
 
    res.send(platform);
});
 
module.exports = router;
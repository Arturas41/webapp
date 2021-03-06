const path = require('path');
const { config, engine } = require('express-edge');
const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const fileUpload = require("express-fileupload");

const Post = require('./database/models/Post');

 
const app = new express();
 
mongoose.connect('mongodb://localhost:27017/node-blog', { useNewUrlParser: true, useUnifiedTopology: true })
    .then(() => 'You are now connected to Mongo!')
    .catch(err => console.error('Something went wrong', err))
 
 config({ cache: process.env.NODE_ENV === 'production' });
 
app.use(fileUpload());
app.use(express.static('pages'));
app.use(engine);
app.set('views', __dirname + '/views');

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
    extended: true
}));

app.get('/', async (req, res) => {
    const posts = await Post.find({})
    res.render('index', {
        posts
    })
});

app.get('/post/:id', async (req, res) => {
    const post = await Post.findById(req.params.id)
    res.render('post', {
        post
    })
});

app.get('/posts/new', (req, res) => {
    res.render('create')
});

app.post("/posts/store", (req, res) => {
    const {
        image
    } = req.files
 
    image.mv(path.resolve(__dirname, 'public/posts', image.name), (error) => {
        Post.create({
            ...req.body,
            image: '/posts/' + image.name
        }, (error, post) => {
            res.redirect('/');
        });
    })
});
 
//app.get('/about', (req, res) => {
//    res.sendFile(path.resolve(__dirname, 'pages/about.html'));
//});
//
// app.get('/contact', (req, res) => {
//    res.sendFile(path.resolve(__dirname, 'pages/contact.html'));
//});
// 
//app.get('/post', (req, res) => {
//    res.sendFile(path.resolve(__dirname, 'pages/post.html'));
//});

app.listen(4000, () => {
    console.log('App listening on port 4000')
});
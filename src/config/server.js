const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');

const app= express();

//settings

app.set('port', process.env.PORT || 3000);
app.set('view engine', 'ejs'); // plantilal de npm ejs
app.set('views', path.join(__dirname, '../app/views')); // vistas html
// Middleware
app.use(bodyParser.urlencoded({extended: false})); // pasar datos nomas BORRAR SI SE COMPLICA LAS COSAS

module.exports = app;
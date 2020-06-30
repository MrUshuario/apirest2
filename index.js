'use strict'
// instale el nodemon, con npm start inicio el proyecto
const express = require('express');
const bodyParser = require('body-parser');
const app = express();

const port = process.env.PORT || 3000; // lo que sea que este en PORT o 3000 por defecto

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json()); //admitir el formato json


app.get('/hola/:name', (req, res) => {
res.send({ message: `hola ${req.params.name}!`})
});


app.listen(port, () => {
console.log(`API REST corriendo en http://localhost:${port}`)
});
const dbConnection = require('../config/dbConnection');

module.exports = app => {
const connection = dbConnection();


///RUTAS REST ///

app.get('/', (req, res) => {

connection.query('Select * FROM citas', (err,result) => {
res.render('portada', { // no se pone portada.ejs en con lo setting es portada a seca
   citas: result // en el body se recibe una variable citas
    }); //res.render es para renderizar
  })

});
}



/* // ejemplos
res.send(200, { products: []})
});

app.get('/api/product/:productId', (req, res) => {

});

app.post('/api/product', (req, res) => {
console.log(req.body)
res.status(200).send({message: 'El producto se ha recibido'})
});

app.put('/api/product/:productId', (req,res) => {

}); */
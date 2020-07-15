const dbConnection = require('../../config/dbConnection');

module.exports = app => {
const connection = dbConnection();


///RUTAS REST ///

app.get('/', (req, res) => {

connection.query('Select * FROM citas', (err,result) => {
	console.log(result);
res.render('portada', { // no se pone portada.ejs en con lo setting es portada a seca
   citas: result // en el body se recibe una variable citas
    }); //res.render es para renderizar
  })

});
}




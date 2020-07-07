'use strict'
const app = require('./config/server'); // aqui usualmente es app = express()
require('./app/routes/citasmedicas') (app); // el ejemplo es de noticias, y le pasamos app que tiene express
// app.use(bodyParser.json()); //admitir el formato json


app.listen(app.get('port'), () => {
	console.log('server on port', app.get('port'));
});
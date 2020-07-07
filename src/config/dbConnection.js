// conexion mysql

const mysql = require ('mysql');

module.exports = () => {
	return mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'citasmedicas',
	port: 3306	
});
} // se exporta a todo el proyecto
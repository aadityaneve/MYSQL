/* const { createPool } = require('mysql');

console.clear();

const pool = createPool({
    host: 'localhost',
    user: 'root',
    password: 'password',
})

pool.query(`SELECT * FROM sql_store.customers`, (error, response) => {
    console.log("🚀 ~ file: database.js ~ line 10 ~ pool.query ~ response", response)
})

let sqlQuery = `CALL sql_store.get_all_customers_name()`
pool.query(sqlQuery, [], (error, response) => {
    console.log("🚀 ~ file: database.js ~ line 14 ~ pool.query ~ response", response)
}) */

var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'password',
    database: 'todosapp'
});

connection.connect(function (err) {
    if (err) {
        console.error('error connecting: ' + err.stack);
        return;
    }

    console.log('connected as id ' + connection.threadId);

    let createTodos = `CREATE TABLE IF NOT EXISTS todo(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(300) NOT NULL,
    status tinyint(1) NOT NULL DEFAULT 0
    );
    `;


    connection.query(createTodos, function (error, results, fields) {
        if (error) throw error;
        // connected!
        console.log(results)
    });

});
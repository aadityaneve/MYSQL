const { createPool } = require('mysql');

const pool = createPool({
    host: 'localhost',
    user: 'root',
    password: 'password',
})

pool.query(`SELECT * FROM sql_store.customers`, (error, response) => {
    return console.log(response)
})
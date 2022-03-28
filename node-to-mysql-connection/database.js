const { createPool } = require('mysql');

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
})
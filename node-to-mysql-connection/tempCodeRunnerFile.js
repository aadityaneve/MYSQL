pool.query('CALL get_all_customers_name()', (error, response) => {
    console.log("🚀 ~ file: database.js ~ line 14 ~ pool.query ~ response", response)
})
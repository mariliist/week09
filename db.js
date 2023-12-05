const { Pool } = require('pg');
const itemsPool = new Pool({
    user: 'postgres',
    password: 'XXX',
    host: 'localhost',
    port: 5432,
    database: 'myrecipes'
});

module.exports = itemsPool; 
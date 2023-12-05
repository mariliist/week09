const { Pool } = require('pg');
const itemsPool = new Pool({
    user: 'postgres',
    password: 'K00st00tmisjaam33',
    host: 'localhost',
    port: 5432,
    database: 'myrecipes'
});

module.exports = itemsPool; 
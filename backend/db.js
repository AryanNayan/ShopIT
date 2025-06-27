const { Pool } = require('pg');

const pool = new Pool({
  user: "postgres",
  password: 'postgrespass',
  host: "localhost",
  port: 5432, // default Postgres port
  database: "ShopIT"
});

module.exports = {
  query: (text, params) => pool.query(text, params)
};
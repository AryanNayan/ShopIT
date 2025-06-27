const express = require('express');
const db = require('./db');
const cors = require('cors');

const app = express();
app.use(cors())

app.get('/', async (req, res) => {
    try {
      res.send("Welcome to ShopIT!")
    } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    }
  });

app.get('/orders', async (req, res) => {
  try {
    const result = await db.query('SELECT * FROM Orders');
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error');
  }
});

app.get('/Customers', async (req, res) => {
    try {
      const result = await db.query('SELECT * FROM Customers');
      res.json(result.rows);
    } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    }
  });

  app.get('/Sellers', async (req, res) => {
    try {
      const result = await db.query('SELECT * FROM Sellers');
      res.json(result.rows);
    } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    }
  });

  app.get('/Products', async (req, res) => {
    try {
      const result = await db.query('SELECT * FROM Products');
      res.json(result.rows);
    } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    }
  });

  app.get('/Warehouse', async (req, res) => {
    try {
      const result = await db.query('SELECT * FROM warehouse');
      res.json(result.rows);
    } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    }
  });

  app.get('/Product_loc', async (req, res) => {
    try {
      const result = await db.query('SELECT * FROM product_loc');
      res.json(result.rows);
    } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    }
  });

    app.get('/sales', async (req, res) => {
    try {
      const result = await db.query(`SELECT TO_CHAR(DATE_TRUNC('month', o.date), 'YYYY-MM') AS month, SUM(o.quantity * p.cost) AS total_sales FROM Orders o JOIN Products p ON o.prod_id = p.prod_id GROUP BY month ORDER BY month`);
      res.json(result.rows);
    } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    }
  });

  

  


app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
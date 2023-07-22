const express = require('express');
const mysql = require('mysql');
const app = express();

app.use(express.json());

const db = mysql.createConnection({
  host: 'localhost',
  user: 'admin',
  password: 'admin',
  database: 'makanan'
});

db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('Terhubung ke database MySQL...');
});

app.get('/', (req, res) => {
  const sql = 'SELECT * FROM menu';

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.json(result);
  });
});

app.post('/menu', (req, res) => {
  const { name, img, price, amount } = req.body;

  const sql = 'INSERT INTO menu (name, img, price, amount) VALUES (?, ?, ?, ?)';
  const values = [name, img, price, amount];

  db.query(sql, values, (err, result) => {
    if (err) {
      throw err;
    }
    res.send('Data menu telah ditambahkan');
  });
});

app.put('/menu/:id', (req, res) => {
  const menuId = req.params.id;
  const { name, img, price, amount } = req.body;

  const sql = 'UPDATE menu SET name=?, img=?, price=?, amount=? WHERE id=?';
  const values = [name, img, price, amount, menuId];

  db.query(sql, values, (err, result) => {
    if (err) {
      throw err;
    }
    res.send('Data menu telah diupdate');
  });
});

app.delete('/menu/:id', (req, res) => {
  const menuId = req.params.id;

  const sql = 'DELETE FROM menu WHERE id = ?';
  const values = [menuId];

  db.query(sql, values, (err, result) => {
    if (err) {
      throw err;
    }
    res.send('Data menu telah dihapus');
  });
});

const port = 4000;
app.listen(port, () => {
  console.log(`Server berjalan di http://localhost:${port}`);
});

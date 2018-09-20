const express = require('express');
const router = express.Router();

const mysqlConnection = require('../database.js');

// GET all Equipos
router.get('/equipo', (req, res) => {
    mysqlConnection.query('SELECT * FROM equipos', (err, rows, fields) => {
        if (!err) {
            res.json(rows);
        } else {
            console.log(err);
        }
    });
});

module.exports = router;

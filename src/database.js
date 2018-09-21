const mysql = require('mysql');
const config = require('./config/database.config');

const databaseConnection = mysql.createConnection({
    host: config.Host,
    user: config.User,
    password: config.Password,
    database: config.Database,
    multipleStatements: config.MultipleStatements,
});

databaseConnection.connect(function (err) {
    if (err) {
        console.error(err);
        return;
    } else {
        console.log('db is connected');
    }
});

// this should be changed to be a generic expresion so we have a interface between the code and the data access.
// probably here we will have the code for the orm
// they should also be changed to full async/await syntax instead of returning a promise
// we should also use class structures as it promotes function enclosing.
function getTeams() {
    return new Promise((resolve) => {
        databaseConnection.query('SELECT * FROM equipos', (error, teams) => {
            resolve(teams);
        });
    });
};

function getTeam(id) {
    return new Promise((resolve) => {
        databaseConnection.query('SELECT * FROM equipos WHERE equipo_id = ?', [id], (err, equipos, fields) => {
            resolve(equipos[0]);
        });
    });
}

// it doesnt work, probably a table relationship when I tried deleting, need to look it up.
function deleteTeam(id) {
    return new Promise((resolve) => {
        databaseConnection.query('DELETE FROM equipos WHERE equipo_id = ?', [id], (err) => {
            return !err;
        });
    });
}

module.exports = {
    getTeams,
    getTeam,
    deleteTeam
};
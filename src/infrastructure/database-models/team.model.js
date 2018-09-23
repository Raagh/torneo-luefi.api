const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const Team = db.define(tableNames.Teams, {
  equipo_id: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  nombre: {
    type: Sequelize.STRING
  },
  escudo: {
    type: Sequelize.STRING
  }
});


module.exports = Team;
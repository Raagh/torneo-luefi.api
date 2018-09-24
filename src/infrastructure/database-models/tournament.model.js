const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const Tournament = db.define(tableNames.tournaments, {
  torneo_id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    primaryKey: true
  },
  nombre_torneo: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  zona_id: {
    type: Sequelize.INTEGER(11),
    allowNull: false
  }
});

module.exports = Tournament;

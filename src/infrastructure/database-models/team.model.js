const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const Team = db.define(tableNames.teams, {
  equipo_id: {
    type: Sequelize.INTEGER(11),
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  nombre: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  escudo: {
    type: Sequelize.STRING(255),
    allowNull: true
  }
});

module.exports = Team;

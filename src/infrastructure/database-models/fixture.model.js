const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const Fixture = db.define(tableNames.fixtures, {
  id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    primaryKey: true
  },
  equipo_id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    references: {
      model: 'equipos',
      key: 'equipo_id'
    }
  },
  torneo_id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    references: {
      model: 'torneos',
      key: 'torneo_id'
    }
  },
  partidos_jugados: {
    type: Sequelize.INTEGER(11),
    allowNull: true
  },
  puntos: {
    type: Sequelize.INTEGER(11),
    allowNull: true
  }
});

module.exports = Fixture;

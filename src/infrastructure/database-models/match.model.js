const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const Match = db.define(tableNames.matches, {
  partido_id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    primaryKey: true
  },
  equipo_a: {
    type: Sequelize.INTEGER(255),
    allowNull: false,
    references: {
      model: 'equipos',
      key: 'equipo_id'
    }
  },
  equipo_b: {
    type: Sequelize.INTEGER(255),
    allowNull: false,
    references: {
      model: 'equipos',
      key: 'equipo_id'
    }
  },
  goles_a: {
    type: Sequelize.STRING(255),
    allowNull: true
  },
  goles_b: {
    type: Sequelize.STRING(255),
    allowNull: true
  },
  fecha: {
    type: Sequelize.INTEGER(11),
    allowNull: false
  },
  dia: {
    type: Sequelize.DATEONLY,
    allowNull: false
  },
  torneo_id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    references: {
      model: 'torneos',
      key: 'torneo_id'
    }
  }
});

module.exports = Match;

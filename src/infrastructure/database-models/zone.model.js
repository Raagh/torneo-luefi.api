const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const Zone = db.define(tableNames.zones, {
  id: {
    type: Sequelize.INTEGER(10).UNSIGNED,
    allowNull: false,
    primaryKey: true
  },
  nombre: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  division_id: {
    type: Sequelize.INTEGER(10),
    allowNull: false
  }
});

module.exports = Zone;

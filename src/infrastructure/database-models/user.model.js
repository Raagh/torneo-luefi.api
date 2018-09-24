const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const User = db.define(tableNames.users, {
  id: {
    type: Sequelize.INTEGER(10).UNSIGNED,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  email: {
    type: Sequelize.STRING(255),
    allowNull: false,
    unique: true
  },
  password: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  remember_token: {
    type: Sequelize.STRING(100),
    allowNull: true
  },
  created_at: {
    type: Sequelize.DATE,
    allowNull: true
  },
  updated_at: {
    type: Sequelize.DATE,
    allowNull: true
  }
});

module.exports = User;

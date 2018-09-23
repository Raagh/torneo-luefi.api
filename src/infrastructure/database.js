const Sequelize = require('sequelize');
const config = require('../config/database.config');
const connection = new Sequelize(config.database, config.user, config.password, {
  host: config.host,
  dialect: 'mysql',
  operatorsAliases: false,
  define: {
    timestamps: false
  },
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

module.exports = {
  connection,
  Sequelize
};
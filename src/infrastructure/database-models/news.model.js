const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const Article = db.define(tableNames.news, {
  id: {
    type: Sequelize.INTEGER(10).UNSIGNED,
    allowNull: false,
    primaryKey: true
  },
  titulo: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  subtitulo: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  mensaje: {
    type: Sequelize.STRING(255),
    allowNull: false
  }
});

module.exports = Article;
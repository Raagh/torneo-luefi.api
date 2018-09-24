const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const Album = db.define(tableNames.albums, {
  id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    primaryKey: true
  },
  nombre: {
    type: Sequelize.STRING(45),
    allowNull: false
  },
  categoria_id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    references: {
      model: 'imagenes_categorias',
      key: 'id'
    }
  }
});

module.exports = Album;

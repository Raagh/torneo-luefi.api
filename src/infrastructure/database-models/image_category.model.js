const db = require('../database').connection;
const Sequelize = require('../database').Sequelize;
const tableNames = require('../table-names');

const ImageCategory = db.define(tableNames.image_category, {
  id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    primaryKey: true
  },
  nombre: {
    type: Sequelize.STRING(45),
    allowNull: false
  }
});

module.exports = ImageCategory;

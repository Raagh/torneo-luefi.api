/* Still not convinced of this. we should be able to make a generic way of targeting the database.
so the repositories dont have information about the ORM we re using, that way if in the future we
change database/ORM to mongodb/mongoose only one class needs to be updated. */

const Article = require('../infrastructure/database-models/news.model');

const getAllNewsArticles = async () => await Article.all();

const getNewsArticle = async articleId => await Article.findById(articleId);

const deleteNewsArticle = async articleId => await Article.destroy({
  where: {
    id: articleId
  }
});

module.exports = {
  getAllNewsArticles,
  getNewsArticle,
  deleteNewsArticle
};
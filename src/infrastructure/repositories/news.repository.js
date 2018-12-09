/* Still not convinced of this. we should be able to make a generic way of targeting the database.
so the repositories dont have information about the ORM we re using, that way if in the future we
change database/ORM to mongodb/mongoose only one class needs to be updated. */

const Article = require('../database-models/news.model');

const getAllNewsArticles = async () => await Article.findAll();

const getNewsArticle = async articleId => await Article.findById(articleId);

const deleteNewsArticle = async articleId =>
  await Article.destroy({
    where: {
      id: articleId,
    },
  });

const updateNewsArticle = async (articleId, article) =>
  await Article.update(
    {
      titulo: article.titulo,
      subtitulo: article.subtitulo,
      mensaje: article.mensaje,
    },
    {
      where: {
        id: articleId,
      },
    }
  );

const createNewsArticle = async article =>
  await Article.create({
    titulo: article.titulo,
    subtitulo: article.subtitulo,
    mensaje: article.mensaje,
  });

module.exports = {
  getAllNewsArticles,
  getNewsArticle,
  deleteNewsArticle,
  updateNewsArticle,
  createNewsArticle,
};

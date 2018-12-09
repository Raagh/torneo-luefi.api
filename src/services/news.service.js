const newsRepository = require('../infrastructure/repositories/news.repository');
const NewsArticle = require('../models/news-article.model');

const getAllNewsArticles = async () => {
  const news = await newsRepository.getAllNewsArticles();
  return news.map(x => new NewsArticle(x.id, x.titulo, x.subtitulo, x.mensaje));
};

const getNewsArticle = async newsId => await newsRepository.getNewsArticle(newsId);

const deleteNewsArticle = async newsId => await newsRepository.deleteNewsArticle(newsId);

const updateNewsArticle = async (newsId, newsArticle) =>
  await newsRepository.updateNewsArticle(newsId, newsArticle);

const createNewsArticle = async newsArticle => await newsRepository.createNewsArticle(newsArticle);

module.exports = {
  getAllNewsArticles,
  getNewsArticle,
  deleteNewsArticle,
  updateNewsArticle,
  createNewsArticle,
};

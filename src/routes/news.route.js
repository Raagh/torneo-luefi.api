const express = require('express');
const router = express.Router();
const newsRepository = require('../repositories/news.repository');

// GET all News
router.get('/', async (req, res) => {
  const teams = await newsRepository.getAllNewsArticles();
  return res.json(teams);
});

// GET News
router.get('/:id', async (req, res) => {
  const id = req.params.id;
  const team = await newsRepository.getNewsArticle(id);
  return res.json(team);
});

// Delete News
router.delete('/:id', async (req, res) => {
  const id = req.params.id;
  const result = await newsRepository.deleteNewsArticle(id);

  return result ? res.json('Article deleted succesfully') : res.json('An error ocurred');
});

module.exports = router;
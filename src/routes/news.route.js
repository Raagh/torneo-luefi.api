const express = require('express');
const router = express.Router();
const newsService = require('../services/news.service');

// GET all News
router.get('/', async (req, res) => {
  const teams = await newsService.getAllNewsArticles();
  return res.json(teams);
});

// GET New
router.get('/:id', async (req, res) => {
  const id = req.params.id;
  const team = await newsService.getNewsArticle(id);
  return res.json(team);
});

// Delete New
router.delete('/:id', async (req, res) => {
  const id = req.params.id;
  const result = await newsService.deleteNewsArticle(id);

  return result ?
    res.status(200).json('Article deleted succesfully') :
    res.status(500).json('An error ocurred');
});

// Update New
router.put('/:id', async (req, res) => {
  const id = req.params.id;
  const result = await newsService.updateNewsArticle(id, req.body);

  return result ? res.status(200).json(result) : res.status(500).json('An error ocurred');
});

// Create New
router.post('/', async (req, res) => {
  const result = await newsService.createNewsArticle(req.body);

  return result ? res.status(200).json(result) : res.status(500).json('An error ocurred');
});

module.exports = router;
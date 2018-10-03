const express = require('express');
const router = express.Router();
const teamsService = require('../services/teams.service');

// GET all Teams
router.get('/', async (req, res) => {
  const teams = await teamsService.getTeams();
  return res.json(teams);
});

// GET Team
router.get('/:id', async (req, res) => {
  const id = req.params.id;
  const team = await teamsService.getTeam(id);
  return res.json(team);
});

// Delete Team
router.delete('/:id', async (req, res) => {
  const id = req.params.id;
  const result = await teamsService.deleteTeam(id);

  return result ?
    res.status(200).json('Team deleted succesfully') :
    res.status(500).json('An error ocurred');
});

// Update Team
router.put('/:id', async (req, res) => {
  const id = req.params.id;
  const result = await teamsService.updateTeam(id, req.body);

  return result ? res.status(200).json(result) : res.status(500).json('An error ocurred');
});

// Create Team
router.post('/', async (req, res) => {
  const result = await teamsService.createTeam(req.body);

  return result ? res.status(200).json(result) : res.status(500).json('An error ocurred');
});

module.exports = router;
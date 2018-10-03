const express = require('express');
const router = express.Router();
const teamsRepository = require('../repositories/teams.repository');

// GET all Teams
router.get('/', async (req, res) => {
  const teams = await teamsRepository.getTeams();
  return res.json(teams);
});

// GET Team
router.get('/:id', async (req, res) => {
  const id = req.params.id;
  const team = await teamsRepository.getTeam(id);
  return res.json(team);
});

// Delete Team
router.delete('/:id', async (req, res) => {
  const id = req.params.id;
  const result = await teamsRepository.deleteTeam(id);

  return result
    ? res.status(200).json('Team deleted succesfully')
    : res.status(500).json('An error ocurred');
});

// Update Team
router.put('/:id', async (req, res) => {
  const id = req.params.id;
  const result = await teamsRepository.updateTeam(id, req.body);

  return result ? res.status(200).json(result) : res.status(500).json('An error ocurred');
});

// Create Team
router.post('/', async (req, res) => {
  const result = await teamsRepository.createTeam(req.body);

  return result ? res.status(200).json(result) : res.status(500).json('An error ocurred');
});

module.exports = router;

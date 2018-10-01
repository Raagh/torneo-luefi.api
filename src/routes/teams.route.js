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

  return result ? res.json('Team deleted succesfully') : res.json('An error ocurred');
});

module.exports = router;

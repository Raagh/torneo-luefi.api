const express = require('express');
const router = express.Router();
const teamsRepository = require('../repositories/teams.repository');


// GET all Teams
router.get('/', async (req, res) => {
    let teams = await teamsRepository.getTeams();
    return res.json(teams);
});

// GET Team
router.get('/:id', async (req, res) => {
    const id = req.params.id;
    let team = await teamsRepository.getTeam(id);
    return res.json(team);
});

// Delete Team
router.delete('/:id', async (req, res) => {
    const id = req.params.id;
    let teams = await teamsRepository.deleteTeam(id);

    if (team) return res.json("Team deleted succesfully");
    else return res.json("An erro ocurred");
});

module.exports = router;
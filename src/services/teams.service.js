const teamsRepository = require('../infrastructure/repositories/teams.repository');
const Team = require('../models/team.model');

const getTeams = async () => {
  const teams = await teamsRepository.getTeams();
  return teams.map(x => new Team(x.equipo_id, x.escudo, x.nombre));
};

const getTeam = async teamId => await teamsRepository.getTeam(teamId);

const deleteTeam = async teamId => await teamsRepository.deleteTeam(teamId);

const updateTeam = async (teamId, team) => await teamsRepository.updateTeam(teamId, team);

const createTeam = async team => await teamsRepository.createTeam(team);

module.exports = {
  getTeams,
  getTeam,
  deleteTeam,
  updateTeam,
  createTeam,
};

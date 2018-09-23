const database = require('../infrastructure/database');

const getTeams = async () => await database.getTeams();

const getTeam = async id => await database.getTeam(id);

const deleteTeam = async id => await database.deleteTeam(id);


module.exports = {
  getTeams,
  getTeam,
  deleteTeam
};
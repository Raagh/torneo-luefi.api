/* Still not convinced of this. we should be able to make a generic way of targeting the database.
so the repositories dont have information about the ORM we re using, that way if in the future we
change database/ORM to mongodb/mongoose only one class needs to be updated. */

const Team = require('../infrastructure/database-models/team.model');

const getTeams = async () => await Team.findAll();

const getTeam = async id => await Team.findById(id);

const deleteTeam = async teamId => await Team.destroy({
  where: {
    equipo_id: teamId
  }
});

const updateTeam = async (teamId, team) => await Team.update(
  {
    nombre: team.nombre,
    escudo: team.escudo
  },
  { where: { equipo_id: teamId } }
);

const createTeam = async team => await Team.create({
  nombre: team.nombre,
  escudo: team.escudo
});

module.exports = {
  getTeams,
  getTeam,
  deleteTeam,
  updateTeam,
  createTeam
};

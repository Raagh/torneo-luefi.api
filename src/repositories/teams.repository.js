const database = require('../database');

class TeamsRepository {
    async getTeams() {
        return await database.getTeams();
    }
    async getTeam(id) {
        return await database.getTeam(id);
    }
    async deleteTeam(id) {
        return await database.deleteTeam(id);
    }
}

module.exports = new TeamsRepository();
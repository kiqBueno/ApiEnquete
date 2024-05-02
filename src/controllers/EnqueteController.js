const EnqueteService = require('../services/EnqueteService');

module.exports = {
  buscarTodos: async (rec, res) => {
    let json = { error:'', result:[]};

    let enquete = await EnqueteService.buscarTodos();

    for(let i in enquete) {
      json.result.push({
        id: enquete[i].id,
        pergunta: enquete[i].titulo
      });
    }
    res.json(json);
  }
}
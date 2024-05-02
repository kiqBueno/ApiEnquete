const express = require('express');
const router = express.Router();

const EnqueteController = require('./controllers/EnqueteController');

router.get('/enquete', EnqueteController.buscarTodos);

module.exports = router;




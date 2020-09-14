var express = require("express");
var router = express.Router();
let miPerfilController = require ("../controllers/miPerfilController")

router.get("/prueba", miPerfilController.prueba);

router.get("/", miPerfilController.vista)

module.exports = router
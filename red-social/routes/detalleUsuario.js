var express = require("express");
var router = express.Router();
let detalleUController = require("../controllers/detalleUsuarioController")

router.get("/prueba", detalleUController.prueba);

router.get("/", detalleUController.vista)

module.exports = router;
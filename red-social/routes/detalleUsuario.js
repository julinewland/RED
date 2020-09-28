var express = require("express");
var router = express.Router();
let detalleUController = require("../controllers/detalleUsuarioController")

router.get("/:id", detalleUController.vista)

module.exports = router;
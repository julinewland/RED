var express = require("express");
var router = express.Router();
let registracionController = require("../controllers/registracionController")

router.get("/prueba",registracionController.prueba);

router.get("/", registracionController.vista);

module.exports = router
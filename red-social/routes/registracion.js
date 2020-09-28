var express = require("express");
var router = express.Router();
let registracionController = require("../controllers/registracionController")

router.get("/", registracionController.vista);

module.exports = router
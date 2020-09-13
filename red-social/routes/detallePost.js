var express = require("express");
var router = express.Router();
let detalleController = require("../controllers/detallePostController")

router.get("/prueba", detalleController.prueba);

module.exports = router;
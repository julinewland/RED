var express = require("express");
var router = express.Router();
let resultadoController = require("../controllers/resultadoController")

router.get("/prueba", resultadoController.prueba);

router.get("/:busqueda", resultadoController.busqueda);


module.exports = router
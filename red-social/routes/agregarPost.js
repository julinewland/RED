var express = require("express");
var router = express.Router();
let agregarPostController = require("../controllers/agregarPostController")

router.get("/prueba", agregarPostController.prueba);

router.get("/", agregarPostController.vista)

module.exports = router;
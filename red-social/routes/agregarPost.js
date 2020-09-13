var express = require("express");
var router = express.Router();
let agregarPostController = require("../controllers/agregarPostController")

router.get("/prueba", agregarPostController.prueba);

module.exports = router;
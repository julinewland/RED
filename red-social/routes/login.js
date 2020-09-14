var express = require("express");
var router = express.Router();
let loginController = require("../controllers/loginController")

router.get("/prueba", loginController.prueba);

router.get("/", loginController.vista)

module.exports = router
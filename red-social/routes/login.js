var express = require("express");
var router = express.Router();
let loginController = require("../controllers/loginController")

router.get("/prueba", loginController.prueba);

module.exports = router
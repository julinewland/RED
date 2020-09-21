var express = require("express");
var router = express.Router();
let homeController = require("../controllers/homeController")

router.get("/", homeController.vista)

module.exports = router;
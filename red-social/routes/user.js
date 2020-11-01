var express = require("express");
var router = express.Router();
let userController = require("../controllers/userController");

router.get("/login", userController.login)

router.get("/registracion", userController.regis)

router.get("/detalle/:id", userController.detalle)

router.get("/me", userController.me)

module.exports = router
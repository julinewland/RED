var express = require("express");
var router = express.Router();
let userController = require("../controllers/userController");

router.get("/login", userController.login)

router.post("/login", userController.procesoLogin)

router.get("/registracion", userController.regis)

router.post("/registracion", userController.porcesoRegis)

router.get("/detalle/:id", userController.detalle)

router.get("/me", userController.me)

router.get("/logout", userController.logout)

module.exports = router
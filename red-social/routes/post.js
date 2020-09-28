var express = require("express");
var router = express.Router();
let postController = require("../controllers/postController");
const { route } = require("./registracion");

router.get("/detalle/:id", postController.detalle);

router.get("/agregar", postController.agregar)

module.exports = router;
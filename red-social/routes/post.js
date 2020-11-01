var express = require("express");
var router = express.Router();
let postController = require("../controllers/postController");
//const { removeTicks } = require("sequelize/types/lib/utils");

router.get("/detalle/:id", postController.detalle);

router.get("/agregar", postController.agregar);

router.post("/nuevo", postController.nuevoPost);

router.get("/buscador", postController.buscador);

router.get("/resultado", postController.resultado);

module.exports = router;
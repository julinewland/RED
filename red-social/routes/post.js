var express = require("express");
var router = express.Router();
let postController = require("../controllers/postController");
//const { removeTicks } = require("sequelize/types/lib/utils");

router.get("/detalle/:id", postController.detalle);

router.get("/agregar", postController.agregar);

router.post("/agregar", postController.nuevoPost);

router.get("/buscador", postController.buscador);

router.get("/resultado", postController.resultado);

router.post("/borrar", postController.borrar)

router.get("/editar/:id", postController.editar)

router.post("/actualizar", postController.actualizar)

module.exports = router;
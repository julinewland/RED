var express = require("express");
var router = express.Router();
let postController = require("../controllers/postController")

router.get("/agregar", postController.agregar);

router.get("/agregar", postController.agregar);

module.exports = router;
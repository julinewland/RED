var express = require("express");
var router = express.Router();
let postController = require("../controllers/postController")

router.get("/detalle/:id", postController.detalle);

module.exports = router;
let agregarPost = {
    prueba: function(req, res){
        res.send ("Hola funciona")},

    vista: function (req, res) {
        res.render("agregarPost")
    }

    }

module.exports = agregarPost
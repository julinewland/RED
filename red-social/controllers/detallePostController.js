let detallePost = {
    prueba: function(req, res){
        res.send ("Hola detalle post funciona")},

    vista: function(req, res){
            res.render("detallePost")
    }

    }

module.exports = detallePost
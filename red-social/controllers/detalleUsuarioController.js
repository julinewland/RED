let detalleUsuario = {
    prueba: function(req, res){
        res.send ("Hola detalle usuario funciona")},
    
    vista: function(req, res){
            var id = req.params.id

            res.render("detalleUsuario")
    }
    
    }

module.exports = detalleUsuario
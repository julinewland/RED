let detalleUsuario = {
    prueba: function(req, res){
        res.send ("Hola detalle usuario funciona")},
    
    vista: function(req, res){
            res.render("detalleUsuario")
    }
    
    }

module.exports = detalleUsuario
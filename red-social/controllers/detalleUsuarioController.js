let detalleUsuario = {
    vista: function(req, res){
            var id = req.params.id

            res.render("detalleUsuario")
    }
    
    }

module.exports = detalleUsuario
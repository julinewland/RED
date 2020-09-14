let miPerfil = {
    prueba: function(req, res){
        res.send ("Hola mi perfil funciona")},
    
    vista: function(req, res){
            res.render("miPerfil")
        }
    }

module.exports = miPerfil
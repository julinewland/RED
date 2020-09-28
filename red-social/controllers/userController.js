let user = {

    detalle: function(req, res){
            var id = req.params.id

            res.render("detalleUsuario")
    },

    login: function(req, res){
        res.render("login")
    },

    me: function(req, res){
        res.render("miPerfil")
    },
    
    regis: function (req, res) {
        res.render("registracion")
    }

    }

module.exports = user
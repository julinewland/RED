let db = require("../database/models/index")
let op = db.Sequelize.Op;

let user = {

    detalle: function(req, res){
            var id = req.params.id;

            db.Usuario.findByPk(id)
            
            .then(function(usuario){
                res.render("detalleUsuario",  {usuario: usuario})
            })
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
let db = require("../database/models/index")
let op = db.Sequelize.Op;
let bcrypt = require("bcryptjs")

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
    },

    procesoLogin: function (req, res){

        db.Usuario.findOne(
            {
                where: {
                    [op.or]:[{email:  req.body.username}, {nombre: req.body.username}]
                }
            }     
        )
        .then(function(usuario) {
            if (usuario == null) {
                res.send("usuario incorrecto")
            } else if (bcrypt.compareSync(req.body.password, usuario.constraseña) == false) {
                res.send("contraseña incorrecta")
            } else {
                res.render("home")
            }
        })
       
    }

    }

module.exports = user
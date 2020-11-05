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
        if(req.session.usuariologueado != undefined){
            res.render("home")
        } else {
            res.render("login")
        }
    },

    me: function(req, res){
        res.render("miPerfil")
    },
    
    regis: function (req, res) {
        res.render("registracion")
       
    },

    porcesoRegis: function (req,res)  {
        
            var userRegister = {
                nombre: req.body.nombredeusuario,
                email: req.body.email,
                cantidadLengu: req.body.cantLenguajes,
                fechaNacim: req.body.nac,
                contraseña: bcrypt.hashSync(req.body.password, 10), //escriptar la contrasenia
                pregunta: req.body.pregunta,
                respuesta: req.body.respuesta, 
            }
        
            db.usuario.create(userRegister)
            .then(function() {
                res.redirect("/home");
            })    
            
             //   response.render('login', {title: 'login', error: '', success: "Usuario registrado correctamente!"});
            };

    

    procesoLogin: function (req, res){

        db.Usuario.findOne(
            {
                where: {
                    [op.or]:[{email: req.body.nnn1}, {nombre: req.body.nnn1}]
                }
            }     
        )
        .then(function(usuario) {
            if (usuario == null) {
                res.send("usuario incorrecto")
            } else if (
                
            //bcrypt.compareSync(req.body.password, usuario.constraseña) == false
             req.body.password != usuario.contraseña) {
                res.send("contraseña incorrecta")
            } else {
                req.session.usuarioLog = usuario;

                if (req.body.recordame != undefined) {
                    //guardo cookie
                    res.cookie("usuarioLog", usuario.id, {expire : new Date() + 1000 * 100});
                }

                res.render("home")
            }
        })
       
    },

    logout: function (req, res){
        req.session.usuarioLog = undefined;

        res.redirect("/home")
    }

    }

module.exports = user
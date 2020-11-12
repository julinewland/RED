let db = require("../database/models/index")
let op = db.Sequelize.Op;
let bcrypt = require("bcryptjs")

let user = {

    detalle: function(req, res){
            var id = req.params.id;

            db.Usuario.findByPk(id,
                {include:[
                    {association: "usuarioPost"},
                ]})
            
            .then(function(usuario){
                res.render("detalleUsuario",  {usuario: usuario})
            })
    },

    login: function(req, res){
        if(req.session.usuarioLog != undefined){
            res.redirect("/home")
        } else {
            res.render("login")
        }
    },

    me: function(req, res){
    
        if (req.session.usuarioLog != undefined) {

        db.Usuario.findByPk(req.session.usuarioLog.id,
            {include:[
                {association: "usuarioPost"}
            ]},
            )

        .then(function(usuario){
            res.render("miPerfil", {usuario: usuario})
        })
        } else {
            res.redirect("/home")
        }  
    },
    
    regis: function (req, res) {
        if (req.session.usuarioLog != undefined) {
            res.redirect("/home")
        } else {
            res.render("registracion")
        }
        
       
    },

    porcesoRegis: function(req,res){

        
        db.Usuario.findAll(
            {
                where: {
                    [op.or]: [{ email: { [op.like]: req.body.email}}]
                }    
            }
        )
        .then(function(usuario){
            if (usuario.lenght >= 1){
                res.send("ya hay un usuario regustrado con tu email")
            }else{
                
                let userRegister = {
                    nombre: req.body.nombredeusuario,
                    email: req.body.email,
                    fechaNacim: req.body.nac,
                    contraseña: bcrypt.hashSync(req.body.password, 10), //escriptar la contraseña
                    pregunta: req.body.pregunta,
                    respuesta: req.body.respuesta, 
                    cantidadLengu: req.body.cantLenguajes,
                };
            
                db.Usuario.create(userRegister)
                
                .then(function(usuario) {
                    req.session.usuarioLog = usuario
                    res.redirect("/home");
                })    
                
                 //   response.render('login', {title: 'login', error: '', success: "Usuario registrado correctamente!"});
                }
        })
    },
        

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
            } else if (req.body.password != usuario.contraseña) {
            //(bcrypt.compareSync(req.body.password, usuario.constraseña) == false) {
                res.send("contraseña incorrecta")
            } else {
                req.session.usuarioLog = usuario;

                if (req.body.recordame != undefined) {
                    //guardo cookie
                    res.cookie("idUsuario", usuario.id, {expire : new Date() + 10000 * 100});
                }
                res.redirect("/home")
            }
        })
       
    },

    logout: function (req, res){
        req.session.usuarioLog = undefined;

        res.redirect("/home")
    },

    editarPerfil: function (req, res){

        if (req.session.usuarioLog != undefined) {
            db.Usuario.findByPk(req.session.usuarioLog.id)
            .then (function (usuario) {
                res.render ("editarPerfil", {usuario: usuario})
            })
        } else {
            res.redirect("/home")
        }
    },

perfilActualizado: function (req, res) {

    let nuevosDatos = {
        nombre: req.body.nombredeusuario,
        email: req.body.email,
        contraseña: bcrypt.hashSync(req.body.contra, 10),
        cantidadLengu: req.body.cantLenguajes,
        fechaNacim: req.body.nac,
    }
    
    db.Usuario.update(nuevosDatos, {
        where: {
            id: req.session.usuarioLog.id
        }
    })

    .then(function(){
        res.redirect("/user/me"); // res.redirect es para que te dirija a la ruta sin que pase todas las variables
    })
},

olvideContra: function (req, res) {

    res.render ("olvideContra")
},

recuperarContra: function (req,res) {
    let usuario = req.query.usuario;
    db.Usuario.findOne(
        {
            where: {
                [op.or]:[{email: usuario}, {nombre: usuario}]
            }
        })

    .then (function(usuario) {
    res.render  ("recuperarContra", {usuario: usuario})
})},

recuperarContraProceso: function (req,res) {

    var respuesta= req.body.respuesta

    db.Usuario.findByPk (req.body.id)

    .then (function(usuario){
        if (usuario.respuesta == respuesta){
            req.session.usuarioLog = usuario;
            res.redirect ("/user/editarPerfil")
        } else {
            res.send ("respuesta incorrecta")
        }
           
    })
   
}




}





module.exports = user
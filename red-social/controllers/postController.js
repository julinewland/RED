let db = require("../database/models/index");
const session = require("express-session");
let op = db.Sequelize.Op;

var post = {
    agregar: function (req, res) {
        res.render("agregarPost")
    },

    borrar: function(req, res){
        //if (req.session.usuarioLog.id == req.body.idUsuario){
        var idPostBorrar = req.body.idPost;

        db.Post.destroy({
            where: {
                id: idPostBorrar
            }
        })
        .then(function(){
            console.log("funciona");
            res.redirect("/home")
        })
        //} else{
        //    res.redirect("/post/detalle/" + req.body.idPost)
        //} 
          
    },

    detalle: function (req, res) {
        var id = req.params.id;
        
        db.Post.findByPk(id,
            {include:[
                {association: "usuarioPost"},
                {association: "coment",
                    include: {association: "usuarioCom"}
                }
            ]},)
    
        .then(function(post){
            res.render("detallePost", {post: post})
        })
        
    },

    editar: function(req, res){

        let idPostEditar = req.params.id;

        db.Post.findByPk(idPostEditar)

        .then(function(post){
            res.render("editarPost", {post: post})
        })
    },

    nuevoPost: function (req, res) {

        if (req.session.usuarioLog != undefined) {
            let nuevoPost = {
                idusuario: req.session.usuarioLog.id,
                urlImagen: req.body.urlImagen,
                texto: req.body.texto,
            };      
    
            db.Post.create(nuevoPost)
    
            .then(function(){
                res.redirect("/home");
            })
        } else {
            res.redirect("/user/registracion")
        }        
    },

    actualizar: function (req, res) {

        if (req.session.usuarioLog != undefined) {
            let postActualizado = {
                urlImagen: req.body.urlImagen,
                texto: req.body.texto, 
            };      
    
            db.Post.update(postActualizado, {
                where: {
                    id: req.body.idPost
                }
            })
    
            .then(function(){
                res.redirect("/post/detalle/" + req.body.idPost);
            })
        } else {
            res.render("/user/registracion")
        }        
    },

    buscador: function(req, res){
        res.render("buscadorPost")
    },

    resultado: function(req, res){
        var busqueda = req.query.busqueda;
            db.Post.findAll(
                {include:[
                    {association: "usuarioPost"},
                    {association: "coment",
                        include: {association: "usuarioCom"}}],
                where: { texto: { [op.like]: "%" + busqueda + "%"} },
                order: ["createdAt"],
                limit: 20,
                })
            
            .then(function(posts){
                res.render("resultadoPost", {posts: posts, busqueda: busqueda})
            })

            
    }
}

module.exports = post
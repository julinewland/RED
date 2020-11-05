let db = require("../database/models/index")
let op = db.Sequelize.Op;

var post = {
    agregar: function (req, res) {
        res.render("agregarPost")
    },
    detalle: function (req, res) {
        var id = req.params.id
        
        res.render("detallePost")
    },

    nuevoPost: function (req, res) {

        if (req.session.usuarioLog != undefined) {
            let nuevoPost = {
                idUsuario: req.body,
                urlImagen: req.body.urlImagen,
                texto: req.body.texto,
                fecha:req.body, 
            };      
    
            db.Post.create(nuevoPost)
    
            .then(function(){
                res.redirect("/home");
            })
        } else {
            res.render("registracion")
        }        
    },

    buscador: function(req, res){
        res.render("buscadorPost")
    },

    resultado: function(req, res){
        var busqueda = req.query.busqueda;

            db.Post.findAll(
                
                {
                    where: {
                        texto: { [op.like]: "%" + busqueda + "%"} },
                
                    order: ["fecha"],
                    limit: 20,
                },
                
                
            )
            
            .then(function(posts){
                res.render("resultadoPost", {posts: posts})
            })

            
    }
}

module.exports = post
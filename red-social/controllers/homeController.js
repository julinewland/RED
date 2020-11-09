let db = require("../database/models/index")
let op = db.Sequelize.Op;

let homeController = {
    
    vista: function(req, res){
        
        db.Post.findAll(
            {include:[
                {association: "usuarioPost"},
                {association: "coment"}
            ],
            order: [["createdAt", "DESC"]],  
            },  
        )

        .then(function(posts){
            res.render("home", {posts: posts})
        })
    }
    
    }

module.exports = homeController
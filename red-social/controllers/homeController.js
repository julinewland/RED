let db = require("../database/models/index")
let op = db.Sequelize.Op;

let homeController = {
    
    vista: function(req, res){
        
        db.Post.findAll({
            order: [["fecha", "DESC"]],
        }
        )
        
        .then(function(posts){
            res.render("home", {posts: posts})
        })
    }
    
    }

module.exports = homeController
let db = require("../database/models/index")
let op = db.Sequelize.Op;

let resultado = {
        busqueda: function(req, res){
        
            var busqueda = req.query.busqueda;

            db.Usuario.findAll(
                {
                    where: {
                        [op.or]: [{ nombre: { [op.like]: "%" + busqueda + "%"} }, { email: { [op.like]: "%" + busqueda + "%"} }],
                    }

        
                }
            )
            
            .then(function(usuario){
                res.render("resultadoBusqueda", {usuario: usuario, busqueda: busqueda})
            })

            

        }
 }

module.exports = resultado
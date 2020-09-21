let resultado = {
        busqueda: function(req, res){
        
            var busqueda = req.params.busq;

        res.render("resultadoBusqueda")
    },
 }

module.exports = resultado
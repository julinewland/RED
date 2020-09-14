let resultado = {
    prueba: function(req, res){
        res.send ("Hola resultado funciona")},
    
    busqueda: function(req, res){
        let busqueda = req.params.busqueda;
        res.send ("tu busqueda es " + busqueda)
    },

    vista:function(req, res){
        res.render("resultadoBusqueda")
    }
 }

module.exports = resultado
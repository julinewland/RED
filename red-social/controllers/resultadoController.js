let resultado = {
    prueba: function(req, res){
        res.send ("Hola resultado funciona")},
    
    busqueda: function(req, res){
        let busqueda = req.params.busqueda;
        res.send ("tu busqueda es " + busqueda)
    }
 }

module.exports = resultado
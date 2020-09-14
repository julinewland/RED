let registracion = {
    prueba: function(req, res){
        res.send ("Hola registracion funciona")
    },

    vista: function (req, res) {
        res.render("registracion")
    }

}

module.exports = registracion
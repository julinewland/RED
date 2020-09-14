let login = {
    prueba: function(req, res){
        res.send ("Hola login funciona")},

    vista: function(req, res){
            res.render("login")
    }

    }

module.exports = login
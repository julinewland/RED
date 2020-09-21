var post = {
    agregar: function (req, res) {
        res.render("agregarPost")
    },
    detalle: function (req, res) {
        var id = req.params.id
        
        res.render("detallePost")
    }
}

module.exports = post
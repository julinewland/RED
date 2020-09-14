var post = {
    agregar: function (req, res) {
        res.render("agregarPost")
    },
    detalle: function (req, res) {
        res.render("detallePost")
    }
}

module.exports = post
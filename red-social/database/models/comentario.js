module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },

        idpost:{
            type: DataTypes.INTEGER,
        },

        idusuario:{
            type: DataTypes.INTEGER,
        },

        texto:{
            type: DataTypes.STRING,
        },

        createdAt:{
            type: DataTypes.DATE,
        },

        updatedAt:{
            type: DataTypes.DATE,
        },
    }

    let config = {
        tableName: "comentarios",
        timestamps: true,
    }

    let Comentario = sequelize.define("Comentario", cols, config);

    Comentario.associate = function (models){
        Comentario.belongsTo(models.Post, {
            as: "coment",
            foreignKey: "idpost"
        })

        Comentario.belongsTo(models.Usuario, {
            as: "usuarioCom",
            foreignKey: "idusuario"
        })
    }

    return Comentario;
}
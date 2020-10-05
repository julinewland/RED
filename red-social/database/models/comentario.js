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

        fechaCreacion:{
            type: DataTypes.DATE,
        },
    }

    let config = {
        tableName: "comentarios",
        timestamps: false,
    }

    let Comentario = sequelize.define("Comentario", cols, config);

    return Comentario;
}
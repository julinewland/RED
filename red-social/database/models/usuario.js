module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },

        nombre: {
            type: DataTypes.STRING,
        },

        fechaNacim:{
            type: DataTypes.DATE,
        },

        cantidadLengu: {
            type: DataTypes.INTEGER,
        },

        contraseña: {
            type: DataTypes.STRING,
        },

        email:{
            type: DataTypes.STRING,
        },

        pregunta:{
            type: DataTypes.STRING,
        },
        
        respuesta:{
            type: DataTypes.STRING,
        }
    }

    let config = {
        tableName: "usuarios"
    }

    let Usuario = sequelize.define("Usuario", cols, config);

    Usuario.associate = function (models){
        Usuario.hasMany(models.Post, {
            as: "usuarioPost",
            foreignKey: "idusuario"
        })

        Usuario.hasMany(models.Comentario, {
            as: "usuarioCom",
            foreignKey: "idusuario"
        })
    }

    return Usuario;
}
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
        tableName: "usuarios",
        timestamps: false,
    }

    let Usuario = sequelize.define("Usuario", cols, config);

    return Usuario;
}
module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },

        idusuario:{
            type: DataTypes.INTEGER,
        },

        urlImagen:{
            type: DataTypes.STRING,
        },

        texto:{
            type: DataTypes.STRING,
        },

        fecha:{
            type: DataTypes.DATE,
        }

    }

    let config = {
        tableName: "posts",
        timestamps: false,
    }

    let Post = sequelize.define("Post", cols, config);

    return Post;
}
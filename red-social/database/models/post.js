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

        createdAt:{
            type: DataTypes.DATE,
        },

        updatedAt:{
            type: DataTypes.DATE,
        },

        deletedAt:{
            type: DataTypes.DATE,
        },

    }

    let config = {
        tableName: "posts",
        timestamps: true,
    }

    let Post = sequelize.define("Post", cols, config);

    return Post;
}
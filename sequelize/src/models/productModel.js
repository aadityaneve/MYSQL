module.exports = (sequelize, DataTypes) => {
  // Product - Model Name
  const Product = sequelize.define("product", {
    title: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    price: {
      type: DataTypes.INTEGER,
    },
    description: {
      type: DataTypes.TEXT,
    },

    published: {
      type: DataTypes.BOOLEAN,
    },
  });
  return Product;
};

module.exports = (sequelize, DataTypes) => {
  // Product - Model Name
  const Review = sequelize.define("review", {
    rating: {
      type: DataTypes.INTEGER,
    },
    description: {
      type: DataTypes.TEXT,
    },
  });
  return Review;
};

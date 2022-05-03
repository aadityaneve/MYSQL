const DB = require("../models");

const Product = DB.products;
const Review = DB.review;

const addProduct = async (req, res) => {
  let info = {
    title: req.body.title,
    price: req.body.price,
    description: req.body.description,
    published: req.body.published ? req.body.published : false,
  };
  console.log(info);
  const product = await Product.create(info);
  console.log(product);
  res.status(200).json(product);
};

const getAllProducts = async (req, res) => {
  let products = await Product.findAll({});
  res.status(200).send(products);
};

const getProductByID = async (req, res) => {
  // let id = req.params.id;
  let product = await Product.findOne({ where: { id: req.params.id } });
  res.status(200).send(product);
};

const updateProduct = async (req, res) => {
  let product = await Product.update({ where: { id: req.params.id } });
  res.status(200).send(product);
};

const deleteProduct = async (req, res) => {
  await Product.destroy({ where: { id: req.params.id } });
  res.status(200).send(product);
};

module.exports = {
  addProduct,
  getAllProducts,
  getProductByID,
  updateProduct,
  deleteProduct,
};

const express = require("express");
const productController = require("../controller/productController");
const router = express.Router();
// console.log("Product ROuter");

router.post("/addProduct", productController.addProduct);

router.get("/productList", productController.getAllProducts);

router.get("/product/:id", productController.getProductByID);

module.exports = router;

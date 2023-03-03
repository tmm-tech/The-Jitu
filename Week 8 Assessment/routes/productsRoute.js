const productsRoute = require('express').Router()

const {
    getAllProducts,
    getSpecificProduct,
    getProductbyCategory,
    UpdateProduct,
    DeleteProduct
} = require('../productController/productsController');

productsRoute.get('/Allproducts', getAllProducts)
productsRoute.get('/products/:id', getSpecificProduct)
productsRoute.get('/category/:category', getProductbyCategory)
productsRoute.put('products', UpdateProduct)
productsRoute.delete('/products/:id', DeleteProduct)

module.exports = productsRoute
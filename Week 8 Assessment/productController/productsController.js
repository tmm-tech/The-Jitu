const sql = require('mssql');
const { config } = require('../sqlconfig');
const validateProductSchema = require('../Validation/productSchema');
module.exports = {
    getAllProducts: async(req, res) => {
        try {
            await sql.connect(config)
            let products = await sql.query `SELECT * FROM products`;
            res.json(products.recordset);
        } catch (error) {
            res.status(400).json(error);
        }
    },
    getSpecificProduct: async(req, res) => {
        const { id } = req.params
        try {
            await sql.connect(config)
            let product = await sql.query `SELECT * FROM products WHERE id = ${id}`;
            res.json(product.recordset);
        } catch (error) {
            res.status(400).json(error);
        }
    },
    getProductbyCategory: async(req, res) => {
        const { category } = req.params
        try {
            await sql.connect(config)
            let productCategory = await sql.query `SELECT * FROM products WHERE category = ${category}`;
            res.json(productCategory.recordset);
        } catch (error) {
            res.status(400).json(error);
        }
    },
    UpdateProduct: async(req, res) => {
        const details = req.body
        try {
            let values = await validateProductSchema(details)
            await sql.connect(config)
            let products = await sql.query `UPDATE products SET description=${values.description}, title=${values.title}`;
            res.json(products.recordset);
        } catch (error) {
            res.status(400).json(error);
        }
    },
    DeleteProduct: async(req, res) => {
        const { id } = req.params
        try {
            await sql.connect(config)
            let products = await sql.query `DELETE FROM products WHERE id=${id}`;
            res.json(products.recordset);
        } catch (error) {
            res.status(400).json(error);
        }
    }

}
const Joi = require('joi');

const UpdateProductSchema = Joi.object({
    title: Joi.string()
        .required()
        .min(5),
    description: Joi.string()
        .required()
        .min(10),

})
const validateProductSchema = (payload) => {
    return UpdateProductSchema.validateAsync(payload, { abortEarly: false })
}
module.exports = validateProductSchema
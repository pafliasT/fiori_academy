const cds = require('@sap/cds')
module.exports = function () {
    const { Customers } = cds.entities('btp.academy')
    this.after('READ', Customers, (customers) => {
        if (customers.length > 1) {
            for (const customer of customers) {

                customer.STREET = '***'
            }

        } else customers.STREET = '***'
    }),
        this.before('CREATE', 'Customers', (req) => {
            req.data.STREET = '***'
        })
}
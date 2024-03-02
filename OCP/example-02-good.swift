struct Product {
    let id: UUID = UUID()
    let name: String
    let price: Double
}

struct Invoice {
    var products: [Product]
    let id: UUID = UUID()
    var discountPercentage: Double = 0

    var total: Double {
        let total = products.reduce(0) { result, element in
            return result + element.price
        }
        let discountedAmount = total * (discountPercentage / 100)
        return total - discountedAmount
    }
}

protocol InvoicePersistenceProtocol {
    func save(invoice: Invoice)
}

struct InvoicePersistence {
    let persistence: InvoicePersistenceProtocol
    
    func saveInvoice(invoice: Invoice) {
        persistence.save(invoice: invoice)
    }
}

struct SwiftDataPersistence: InvoicePersistenceProtocol {
    func save(invoice: Invoice) {
        // Save invoice to swift data
    }
}

struct DatabasePersistence: InvoicePersistenceProtocol {
    func save(invoice: Invoice) {
        // Save invoice to data base
    }
}
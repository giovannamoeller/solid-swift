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

//: This code violates OCP because if there's any other place we can save the invoice, we need to add a new function to InvoicePersistence

struct InvoicePersistence {
	let invoice: Invoice

	func saveInvoiceToSwiftData() {
		print("Saving invoice to SwiftData: \(invoice.id)")
	}

	func saveInvoiceToDatabase() { 
		print("Saving invoice to Database: \(invoice.id)")
	}
}
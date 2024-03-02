import UIKit

struct Product {
    let id: UUID = UUID()
    let name: String
    let price: Double
}

struct InvoicePrinter {
    let invoice: Invoice
    
    func printInvoice() { /* Could also inject via function */
        print("----")
        print("Invoice id: \(invoice.id)")
        print("Total cost: $\(invoice.total)")
        print("Discounts: \(invoice.discountPercentage)")
        print("----")
    }
}

struct InvoicePersistence {
    let invoice: Invoice

    func saveInvoice() {
        // Save invoice data locally or to database
    }
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

    func printInvoice() { /* Could also remove this method, but then we'd need to create a printer/persistence object for each invoice, or inject dependency via function */
        let printer = InvoicePrinter(invoice: self)
        printer.printInvoice()
    }

    func saveInvoice() {
        let persistence = InvoicePersistence(invoice: self)
        persistence.saveInvoice()
    }
}

let products: [Product] = [
    Product(name: "iPhone 13", price: 999.9),
    Product(name: "Macbook Air", price: 1299.9),
    Product(name: "Apple Watch", price: 499.9)
]

let invoice = Invoice(products: products, discountPercentage: 20)
invoice.printInvoice()
invoice.saveInvoice()

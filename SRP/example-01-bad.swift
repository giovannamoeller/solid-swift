import Foundation

//: This code violates SRP because Invoice is responsible for too many things:
//: 1. Calculate the total of the products
//: 2. Print invoice
//: 3. Save invoice

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

    func printInvoice() {
        print("----")
        print("Invoice id: \(id)")
        print("Total cost: $\(total)")
        print("Discounts: \(discountPercentage)")
        print("----")
    }

    func saveInvoice() {
        // Save invoice data locally or to database
    }
}

let products: [Product] = [
    Product(name: "iPhone 13", price: 999.9),
    Product(name: "Macbook Air", price: 1299.9),
    Product(name: "Apple Watch", price: 499.9)
]

let invoice = Invoice(products: products, discountPercentage: 20)
invoice.printInvoice()
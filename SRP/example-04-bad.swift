import Foundation

//: This code violates SRP because OrderManager is responsible for too many things:
//: 1. Creating a new order
//: 2. Saving order in a database
//: 3. Sending confirmation email
//: If you need to change email logic or the way that orders are being saved, you need to direcyly change OrderManager, which violates the SRP

struct Product {
    let id: UUID = UUID()
    let name: String
    let price: Double
}

struct Order {
    let id: UUID = UUID()
    let products: [Product]
    let customerEmail: String
    var totalPrice: Double {
        return products.reduce(0) { result, product in
            product.price + result
        }
    }
}

class OrderManager {
    func createOrder(products: [Product], customerEmail: String) {
        let order = Order(products: products, customerEmail: customerEmail)
        
        saveOrder(order)
        
        sendConfirmationEmail(to: order.customerEmail)
    }
    
    func saveOrder(_ order: Order) {
        // Save order in database
    }
    
    func sendConfirmationEmail(to customerEmail: String) {
        // Send confirmation email
    }
}

let products: [Product] = [
    Product(name: "iPhone 13", price: 999.9),
    Product(name: "Macbook Air", price: 1299.9),
    Product(name: "Apple Watch", price: 499.9)
]

let orderManager = OrderManager()
orderManager.createOrder(products: products, customerEmail: "giovanna@gmail.com")
import Foundation

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
    let persistenceManager: OrderPersistenceManager
    let emailService: EmailService
    
    init(persistenceManager: OrderPersistenceManager, emailService: EmailService) {
        self.persistenceManager = persistenceManager
        self.emailService = emailService
    }
    
    func createOrder(products: [Product], customerEmail: String) {
        let order = Order(products: products, customerEmail: customerEmail)
        
        persistenceManager.saveOrder(order)
        
        emailService.sendConfirmationEmail(to: order.customerEmail)
    }
}

class OrderPersistenceManager {
    func saveOrder(_ order: Order) {
        // Save order in database
    }
}

class EmailService {
    func sendConfirmationEmail(to customerEmail: String) {
        // Send confirmation email
    }
}

let products: [Product] = [
    Product(name: "iPhone 13", price: 999.9),
    Product(name: "Macbook Air", price: 1299.9),
    Product(name: "Apple Watch", price: 499.9)
]

let persistenceManager = OrderPersistenceManager()
let emailService = EmailService()
let orderManager = OrderManager(persistenceManager: persistenceManager, emailService: emailService)

orderManager.createOrder(products: products, customerEmail: "giovanna@gmail.com")
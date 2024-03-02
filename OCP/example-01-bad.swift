import Foundation

//: This code violates the OCP principle because if you add a new payment method, you need to directly change the processPayment function

enum PaymentType {
    case creditCard, debitCard, paypal
}

class PaymentProcessor {
	func processPayment(amount: Double, method: PaymentType) {
        switch method {
        case .creditCard:
            print("Process payment with credit card")
        case .debitCard:
            print("Process payment with debit card")
        case .paypal:
            print("Process payment with paypal")
        }
    }
}

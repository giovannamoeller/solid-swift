import Foundation

enum PaymentType {
    case creditCard, debitCard, paypal
}

protocol PaymentMethod {
    func processPayment(amount: Double)
}

class CreditCardPayment: PaymentMethod {
    func processPayment(amount: Double) {
        print("Process payment with credit card")
    }
}

class DebitCardPayment: PaymentMethod {
    func processPayment(amount: Double) {
        print("Process payment with debit card")
    }
}

class PayPalPayment: PaymentMethod {
    func processPayment(amount: Double) {
        print("Process payment with Paypal")
    }
}

class PaymentProcessor {
    
    let paymentMethod: PaymentMethod
    
    init(paymentMethod: PaymentMethod) {
        self.paymentMethod = paymentMethod
    }
    
    func processPayment(amount: Double) {
        paymentMethod.processPayment(amount: amount)
    }
}

let paymentMethod = CreditCardPayment()
let paymentProcessor = PaymentProcessor(paymentMethod: paymentMethod)
paymentProcessor.processPayment(amount: 30)

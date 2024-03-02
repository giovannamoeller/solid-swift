enum CustomerType {
    case vip, regular
}

//: If we introduce a new customer type, we need to change the function calculateDiscount

class DiscountCalculator {
    func calculateDiscount(amount: Double, type: CustomerType) -> Double {
        switch type {
        case .vip:
            return amount * 0.8
        case .regular:
            return amount * 0.95
        }
    }
}

let calculator = DiscountCalculator()
print(calculator.calculateDiscount(amount: 30, type: .vip))
print(calculator.calculateDiscount(amount: 30, type: .regular))
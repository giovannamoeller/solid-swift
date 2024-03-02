enum CustomerType {
    case vip, regular
}

protocol DiscountStrategy {
    func calculateDiscount(amount: Double) -> Double
}

class VIPDiscountStrategy: DiscountStrategy {
    func calculateDiscount(amount: Double) -> Double {
        return amount * 0.8
    }
}

class RegularDiscountStrategy: DiscountStrategy {
    func calculateDiscount(amount: Double) -> Double {
        return amount * 0.95
    }
}

class DiscountCalculator {
    let discountStrategy: DiscountStrategy
    
    init(discountStrategy: DiscountStrategy) {
        self.discountStrategy = discountStrategy
    }
    
    func calculateDiscount(amount: Double) -> Double {
        return discountStrategy.calculateDiscount(amount: amount)
    }
}

let vipDiscountStrategy = VIPDiscountStrategy()
let discountCalculator = DiscountCalculator(discountStrategy: vipDiscountStrategy)
print(discountCalculator.calculateDiscount(amount: 30))

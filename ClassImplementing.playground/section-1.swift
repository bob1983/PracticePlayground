// Playground - noun: a place where people can play

import UIKit

extension String {
    func twice() -> String {
        return self + self
    }
}

"hoge".twice()

class Product : NSObject {
    var price : Int!
    let tax = 0.08
    
    func priceIncludingTax() -> Int {
        return Int(Double(price) * (1.0 + tax))
    }
}

let product = Product()
product.price = 47
println(product.priceIncludingTax())
import Foundation


fileprivate protocol PaymentProtocol {
    func makePayment(amount: Double)
}
// v1 features
fileprivate class CashPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        //perform
    }
}

fileprivate class VisaPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        //perform
    }
}
//

//v2 features
fileprivate class MasterCardPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        //perform
    }
}
//

fileprivate class PaymentManager {
    func makePayment(amount: Double, payment: PaymentProtocol) {
        payment.makePayment(amount: amount)
    }
}

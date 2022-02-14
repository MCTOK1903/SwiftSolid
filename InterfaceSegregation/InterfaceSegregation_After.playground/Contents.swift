import UIKit

fileprivate protocol Feedable {
    func eat()
}

fileprivate protocol Workable {
    func work()
}

fileprivate class Human: Feedable, Workable {
    func eat() {
        print("eating")
    }

    func work() {
        print("working")
    }
}

fileprivate class Robot: Workable {
    func work() {
        print("working")
    }
}

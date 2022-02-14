import Foundation

fileprivate protocol Worker {
    func eat()
    func work()
}

fileprivate class Human: Worker {
    func eat() {
        print("eating")
    }

    func work() {
        print("working")
    }
}


fileprivate class Robot: Worker {
    func eat() {
        // Robots can't eat!
        fatalError("Robots does not eat!")
    }

    func work() {
        print("working")
    }
}

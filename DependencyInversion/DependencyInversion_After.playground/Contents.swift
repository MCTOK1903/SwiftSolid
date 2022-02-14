import Foundation

fileprivate protocol Workable {
    func work()
}

fileprivate struct Employee: Workable {
    func work() {
        print("working...")
    }
}


fileprivate struct Employer {
    var workables: [Workable]

    func manage() {
        workables.forEach { workable in
            workable.work()
        }
    }
}

fileprivate func example() {
    let employer = Employer(workables: [Employee()])
    employer.manage()
}

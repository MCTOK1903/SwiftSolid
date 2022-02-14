import Foundation

fileprivate struct Employee {
    func work() {
        print("working...")
    }
}

fileprivate struct Employer {
    var employees: [Employee]

    func manage() {
        employees.forEach { employee in
            employee.work()
        }
    }
}

fileprivate func example() {
    let employer = Employer(employees: [Employee()])
    employer.manage()
}

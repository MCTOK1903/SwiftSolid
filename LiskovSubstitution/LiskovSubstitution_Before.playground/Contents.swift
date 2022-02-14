
import Foundation

fileprivate class Rectangle {

    var witdh: Float = 0
    var height: Float = 0

    func set(witdh: Float) {
        self.witdh = witdh
    }

    func set(height: Float) {
        self.height = height
    }

    func calculateArea() -> Float {
        return witdh * height
    }

}

fileprivate class Square: Rectangle {

    override func set(witdh: Float) {
        self.witdh = witdh
        self.height = witdh
    }

    override func set(height: Float) {
        self.height = height
        self.witdh = witdh
    }
}
//breaks the lsp
fileprivate func setSizeAndPrint(of rectangle: Rectangle) {
    rectangle.set(height: 5)
    rectangle.set(witdh: 4)
    print(rectangle.calculateArea())
}

fileprivate func example() {
    let rectangle = Rectangle()
    setSizeAndPrint(of: rectangle)

    let square = Square()
    setSizeAndPrint(of: square)
}


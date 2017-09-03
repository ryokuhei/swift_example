import Foundation

// p.47
public class _Array {

    var array: Array<Any>

    init() {
        self.array = []
    }

    func show() {
        print("array \t\t\t\t: ", terminator: "")
        print(self.array)

        guard self.array.count > 0 else {
            return
        }

        print("array[0] \t\t\t: ", terminator: "")
        print(self.array[0])
    }

    func add<T>(value: T) {
        self.array.append(value)
        print("-value: \(value) added....")
    }

    func update<T>(value: T, index: Int) {

        guard self.array.count > index else {
            print("-index: \(index) is not exist")
            return
        }
        array[index] = value
        print("-value: array[\(index)] is updated to \(value) ....")
    }

    func join<T>(array: [T]) {
        self.array = self.array + array
        print("-self.array: \(self.array) + array \(array) joined to array....")
    }
}

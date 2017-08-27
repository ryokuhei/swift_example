import Foundation

public struct BasicSyntax {

    // p.47
    public class Array {

       public var array = ["a1", "a2", "a3"]
       public var array2: [Int] = [1, 2, 3]
       public var array3: [String]? = []
       public var array4 = [Int]()
       public var dimensionalArray = [[1, 2, 3], [4, 5, 6]]
       public var dimensionalArray2: [[String]]? = []

       public init() {
                    print("show array")
self.show()
print()

print("add array")
self.add("add")
self.add(5)
self.show()
print()

print("update array")
self.update("update")
self.update(10)
self.show()
print()

print("join array")
self.join(array, array3!)
self.join(array2, array4)
self.show()
print()

        }

       public func show() {
            print("array \t\t\t\t: ", terminator: "")
            print(array)

            print("array[0] \t\t\t: ", terminator: "")
            print(array[0])

            print("array2 \t\t\t\t: ", terminator: "")
            print(array2)

            print("array2[0] \t\t\t: ", terminator: "")
            print(array2[0])

            print("array3 \t\t\t\t: ", terminator: "")
            print(array3!)

            print("array4 \t\t\t\t: ", terminator: "")
            print(array4)

            print("dimensionalArray \t: ", terminator: "")
            print(dimensionalArray)

            print("dimensionalArray2 \t: ", terminator: "")
            print(dimensionalArray2!)
       }

         public func add(_ value: String) {
            array.append(value)
            array3?.append(value)
            dimensionalArray2?.append(array3!)

            print("-value: \(value) added....")
        }

       public func add(_ value: Int) {
            array2.append(value)
            array4.append(value)
            dimensionalArray.append(array2)

            print("-value: \(value) added....")
        }
         public func update(_ value: String) {
            array[0] = value
            array3?[0] = value
            dimensionalArray2?[0] = array3!

            print("-value: \(value) updated....")
        }

         public func update(_ value: Int) {
            array2[0] = value
            array4[0] = value
            dimensionalArray[0] = array2

            print("-value: \(value) updated....")
        }

        public func join(_ array1: [String], _ array2: [String]) {
            array = array1 + array2
            print("-array1: \(array1) + array2 \(array2) joined to array....")
        }

        public func join(_ array1: [Int], _ array2: [Int]) {
            self.array2 = array1 + array2
            print("-array1: \(array1) + array2 \(array2) joined　to array2....")
        }
    }

    // p.51
    public class Dictionary {

        public var dictionary = ["a": 1, "b": 2]
        public var dictionary2: [String: String] = [:]

        public init() {
print("show dictionary")
self.show()
print()

print("add dictionary")
self.add(key: "key", value: 0)
self.add(key: "key", value: "add")
self.show()
print()

print("update dictionary")
self.update(key: "key", value: 5)
self.update(key: "key", value: "update")
self.show()
print()

print("delete dictionary")
self.delete(key: "key")
self.show()
print()

        }

        public func show() {

            print("dictionary \t\t\t: ", terminator: "")
            print(dictionary)

            print("dictionary[\"a\"] \t: ", terminator: "")
            print(dictionary["a"]!)

            print("dictionary2 \t\t: ", terminator: "")
            print(dictionary)

            print("dictionary2[\"key\"] \t: ", terminator: "")
            if let value = dictionary2["key"] {
                print(value)
            } else {
                print("nil")
            }

        }

        public func add(key: String, value: Int) {
            dictionary[key] = value
            print("-key :\(key), value: \(value) added....")
        }
        public func add(key: String, value: String) {
            dictionary2[key] = value
            print("-key :\(key), value: \(value) added....")
        }

        public func update(key: String, value: Int) {
            dictionary[key] = value
            print("-key :\(key), value: \(value) updated....")
        }
        public func update(key: String, value: String) {
            dictionary2[key] = value
            print("-key :\(key), value: \(value) updated....")
        }

        public func delete(key: String) {
            dictionary[key] = nil
            dictionary2[key] = nil

            print("-key :\(key) deleted....")
        }
    }
}

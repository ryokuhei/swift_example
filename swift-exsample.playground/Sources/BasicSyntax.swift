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
        }

       public func show() {
            print(array)
            print(array2)
            print(array3!)
            print(array4)
            print(dimensionalArray)
            print(dimensionalArray2!)
       }

         public func add(_ value: String) {
            array.append(value)
            array3?.append(value)
            dimensionalArray2?.append(array3!)
        }

       public func add(_ value: Int) {
            array2.append(value)
            array4.append(value)
            dimensionalArray.append(array2)
        }
         public func update(_ value: String) {
            array[0] = value
            array3?[0] = value
            dimensionalArray2?[0] = array3!
        }

         public func update(_ value: Int) {
            array2[0] = value
            array4[0] = value
            dimensionalArray[0] = array2
        }

        public func join(_ value1: [String], _ value2: [String]) {
            array = value1 + value2
        }

        public func join(_ value1: [Int], _ value2: [Int]) {
            array2 = value1 + value2
        }
    }
}

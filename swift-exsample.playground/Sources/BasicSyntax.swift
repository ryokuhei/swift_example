import Foundation

public struct BasicSyntax {

    // p.47
    public class _Array {

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
    public class _Dictionary {

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

    // p.54
    public class _Range {

        public init() {
            print("[Range]")
            onRange(start: 1, end: 10, containtsNo: 2)
            print()

            print("[CountableRange]")
            onCountableRange(start: 1, end: 10, containtsNo: 2)
            print()

            print("[ClosedRange]")
            onClosedRange(start: 1, end: 10, containtsNo: 2)
            print()

            print("[CountableClosedRange]")
            onCountableClosedRange(start: 1, end: 10, containtsNo: 2)
            print()
        }

        public func onRange(start: Int, end: Int, containtsNo: Int? = nil) {
            let range: Range<Int>  = start ..< end

            print("lower: \(range.lowerBound)")
            print("upper: \(range.upperBound)")
            print("count: \(range.count)")
            // Error : Range in not countable
/*
            for vaue in range {
                print(value)
            }
*/
            if  let containtsNo = containtsNo {
                print("contains \(containtsNo): \(range.contains(containtsNo))")
            }

        }

        public func onCountableRange(start: Int, end: Int, containtsNo: Int? = nil) {
            let countableRange: CountableRange<Int>  = start ..< end

            print("lower: \(countableRange.lowerBound)")
            print("upper: \(countableRange.upperBound)")
            print("count: \(countableRange.count)")

            print("value:")
            for value in countableRange {
                print(value)
            }

            if  let containtsNo = containtsNo {
                print("contains \(containtsNo): \(countableRange.contains(containtsNo))")
            }
        }

        public func onClosedRange(start: Int, end: Int, containtsNo: Int? = nil) {
            let closedRange: ClosedRange<Int>  = start ... end

            print("lower: \(closedRange.lowerBound)")
            print("upper: \(closedRange.upperBound)")
            print("count: \(closedRange.count)")
            // Error : ClosedRange in not countable
/*
            for vaue in range {
                print(value)
            }
*/
            if  let containtsNo = containtsNo {
                print("contains \(containtsNo): \(closedRange.contains(containtsNo))")
            }
        }

        public func onCountableClosedRange(start: Int, end: Int, containtsNo: Int? = nil) {
            let countableClosedRange: CountableClosedRange<Int>  = start ... end

            print("lower: \(countableClosedRange.lowerBound)")
            print("upper: \(countableClosedRange.upperBound)")
            print("count: \(countableClosedRange.count)")

            print("value:")
            for value in countableClosedRange {
                print(value)
            }
            if  let containtsNo = containtsNo {
                print("contains \(containtsNo): \(countableClosedRange.contains(containtsNo))")
            }
        }
    }

    // p.58
    public class _Optional {

        var optional: Optional<Int>
        var optional2: Int?

        public init() {

            print("optional&optional2 is nil")
            print("[Optional Binding]")
            self.optionalBinding()
            print()

            print("[Nil Coalscing Operator(default 11)]")
            self.nilCoalscingOperator(no: 11)
            print()

           /* Runtime error deo to nil */
//            print("[Forced Unrapping]")
//            self.forcedUnwrapping()
//            print()

            print("[Optional Chaining]")
            self.optionalChaining()
            print()

            print()
            print("optional = 1, optional2 = 2")
            self.insert(no: 1, no2: 2)

            print("[Optional Binding]")
            self.optionalBinding()
            print()

            print("[Nil Coalscing Operator(default 11)]")
            self.nilCoalscingOperator(no: 11)
            print()

            print("[Forced Unrapping]")
            self.forcedUnwrapping()
            print()

            print("[Optional Chaining]")
            self.optionalChaining()
            print()
        }

        func insert(no: Int? = nil, no2: Int? = nil) {
            self.optional = no
            self.optional2 = no2
        }

        func optionalBinding() {
            if let value = optional {
                print("optional: \(value)")

            } else {
                print("optional: nil")
            }

            if let value = optional2 {
                print("optional2: \(value)")

            } else {
                print("optional2: nil")
            }

        }

        func nilCoalscingOperator(no: Int) {
            let value = optional ?? no
            print("optional: \(value)")

            let value2 = optional2 ?? no
            print("optional: \(value2)")
        }

        func forcedUnwrapping() {

            print("optional: \(optional!)")
            print("optional2: \(optional2!)")

        }

        func optionalChaining() {

           print("optional: \(String(describing: optional?.hashValue))")
           print("optional: \(String(describing: optional2?.hashValue))")

        }
    }
}

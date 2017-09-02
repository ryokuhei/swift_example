import Foundation

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

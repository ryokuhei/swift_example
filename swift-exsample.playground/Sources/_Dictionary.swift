import Foundation

// p.51
public class _Dictionary {

    private var dictionary: [String: Any]

    public init() {
        dictionary = [:]
    }

    public func show() {
        print("dictionary \t\t\t: ", terminator: "")
        print(dictionary)

        guard let value = dictionary.first else {
            return
        }

        print("dictionary[\"\(value.key)\"] \t: ", terminator: "")
        print(dictionary[value.key]!)
    }

    public func add<T>(key: String, value: T) {
        dictionary[key] = value
        print("-key :\(key), value: \(value) added....")
    }

    public func update<T>(key: String, value: T) {

        guard dictionary.index(forKey: key) != nil else {
            print("-key :\(key) is not exist")
            return
        }

        dictionary.updateValue(value, forKey: key)
        print("-key :\(key), value: \(value) updated....")
    }

    public func delete(key: String) {

        guard dictionary.index(forKey: key) != nil else {
            print("-key :\(key) is not exist")
            return
        }

        dictionary.removeValue(forKey: key)

        print("-key :\(key) deleted....")
    }
}

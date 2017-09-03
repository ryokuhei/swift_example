import Foundation

// p.58
public class _Optional {

    var optional: Optional<Any>

    public init() {
    }

    func insert(value: Any? = nil) {
        self.optional = value
    }

    func optionalBinding() {

        if let value = self.optional {
            print("optional: \(value)")

        } else {
            print("optional: nil")
        }
    }

    func nilCoalscingOperator(no: Int) {

        let value = optional ?? no
        print("optional: \(value)")
    }

    func forcedUnwrapping() {

        print("optional: \(optional!)")

    }

    func optionalChaining() {

        if let op = self.optional as? Int? {
            print("optional: \(String(describing: op?.hashValue))")
        } else if let op = self.optional as? String? {
            print("optional: \(String(describing: op?.hashValue))")
        }
    }
}

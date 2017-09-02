import Foundation

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
//          print("[Forced Unrapping]")
//          self.forcedUnwrapping()
//          print()

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

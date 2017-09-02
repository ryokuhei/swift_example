    // p.58
    class _Optional {

        var optional: Optional<Int>
        var optional2: Int?

        public init() {

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
        

        func optionalChaining(no: Int) {
           var result = optional?.hashValue
           print("optional: \(result!)")

        }
    }
}
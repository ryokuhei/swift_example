import Foundation

public struct BasicSyntax {

    public init() {
    }

    public func array() {

        let array = _Array()

        print("[show array]")
        array.show()

        print("[add array]")
        array.add(value: 4)
        array.show()

        print("[update array]")
        array.update(value: 10, index: 0)
        array.show()

        print("[join array]")
        array.join(array: [10, 11, 12])
        array.show()

    }

    public func dictionary() {

        let dictionary = _Dictionary()
        print("[show dictionary]")
        dictionary.show()

        print("[add dictionary]")
        dictionary.add(key: "key", value: 0)
        dictionary.add(key: "key", value: "add")
        dictionary.show()

        print("[update dictionary]")
        dictionary.update(key: "key", value: 5)
        dictionary.update(key: "key", value: "update")
        dictionary.show()

        print("[delete dictionary]")
        dictionary.delete(key: "key")
        dictionary.show()

    }

    public func range() {

        let range = _Range()

        print("[Range]")
        range.onRange(start: 1, end: 10, containtsNo: 2)

        print("[CountableRange]")
        range.onCountableRange(start: 1, end: 10, containtsNo: 2)

        print("[ClosedRange]")
        range.onClosedRange(start: 1, end: 10, containtsNo: 2)

        print("[CountableClosedRange]")
        range.onCountableClosedRange(start: 1, end: 10, containtsNo: 2)
    }

    public func optional() {

        let optional = _Optional()

        print("optional is nil")

        print("[Optional Binding]")
        optional.optionalBinding()

        print("[Nil Coalscing Operator(default 11)]")
        optional.nilCoalscingOperator(no: 11)

       /* Runtime error deo to nil */
//          print("[Forced Unrapping]")
//          optional.forcedUnwrapping()
//          print()

        print("[Optional Chaining]")
        optional.optionalChaining()

        print("optional add 1")
        optional.insert(value: 1)

        print("[Optional Binding]")
        optional.optionalBinding()

        print("[Nil Coalscing Operator(default 11)]")
        optional.nilCoalscingOperator(no: 11)

        print("[Forced Unrapping]")
        optional.forcedUnwrapping()

        print("[Optional Chaining]")
        optional.optionalChaining()

    }

    public func tuple() {

        let tuple =  _Tuple()
        tuple.use(tuple: (2, "john", true))
    }

    public func cast() {

        let cast =  _Cast(int: 1, string: "いち", any: "any")
        cast.upCast()
        cast.downCast()
        cast.forcedCast()
    }

    public func conditionalBranch() {

        let conditionalBranch = _ConditionalBranch()
        print("[if]")
        conditionalBranch.if(value: 5, max: 1, min: 10)
        conditionalBranch.if(value: -1, max: 1, min: 10)
        conditionalBranch.if(value: 11, max: 1, min: 10)

        print("[if let]")
        conditionalBranch.ifLet(value: 1)
        conditionalBranch.ifLet(value: nil)

        print("[if guard]")
        conditionalBranch.ifGuard(value: 1)
        conditionalBranch.ifGuard(value: nil)

        print("[if case]")
        conditionalBranch.ifCase(value: 1, range: 0..<10)
        conditionalBranch.ifCase(value: -1, range: 0..<10)

        print("switch-case")
        var number = _ConditionalBranch.Numbers.one
        conditionalBranch.switch(value: number)
        number = _ConditionalBranch.Numbers.three
        conditionalBranch.switch(value: number)
    }

}

import Foundation

public class _ConditionalBranch {

    init() {
    }

    func `if`(value: Int, max: Int, min: Int) {
        if value > max {
            print("\(value) is \(max) or more")
        } else if value < min {
            print("\(value) is \(min) or less")
        } else {
            print("\(value) is range \(max) to \(min)")
        }

    }

    func ifLet(value: Any?) {
        if let val = value {
            print("value is \(val)")
        } else {
            print("value is nil")
        }

        if let val = value as? Int {
            print("value Type is \(String(describing: type(of: val)))")
        } else {
            print("value Type is not Int")
        }

    }

    func ifGuard(value: Int?) {

        guard let val = value else {
            print("value is nil")
            return
        }
        print("value is \(val)")

    }

    func ifCase(value: Int, range: Range<Int>) {
        if case range = value {
            print("\(value) is range \(range.upperBound) to \(range.lowerBound)")
        }
    }

    func `switch`(value: Numbers) {
        switch value {
        case .one:
            print("\(value) is one")
        case .two:
            print("\(value) is two")
        default:
            print("\(value) is not one or two")

        }
    }

    enum Numbers: Int {
        case one = 1
        case two = 2
        case three = 3
    }

}

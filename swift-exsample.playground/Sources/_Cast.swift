import Foundation

// p.71
public class _Cast {

    var int: Int
    var string: String
    var any: Any

    init(int: Int, string: String, any: Any) {
        self.int = int
        self.string = string
        self.any = any

    }

    public func upCast() {
        print("[up cast]")

        let upCast = int as Any
        print("Int to Any: \(String(describing: type(of: upCast)))")
        let upCast2 = string as Any
        print("String to Any: \(String(describing: type(of: upCast2)))")
        print()
    }

    public func downCast() {
        print("[down cast]")

        let downCast = any as? Int

        if let value = downCast {
            print("Any to Int: \(String(describing: type(of: value)))")
        }

        let downCast2 = any as? String

        if let value = downCast2 {
            print("Any to String: \(String(describing: type(of: value)))")
        }

        print()
    }

    public func forcedCast() {
        print(["forcedCast"])

        /* runtime error due AnyType is StringType */
//        let downCast = any as! Int
//        print("Any to Int: \(String(describing: type(of: downCast)))")

        let downCast2 = any as! String
        print("Any to String: \(String(describing: type(of: downCast2)))")

        print()
    }

}

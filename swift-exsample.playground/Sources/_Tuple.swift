import Foundation

// p.69
public class _Tuple {

    let void: ()

    init() {
        // Type Void p.71
        void = ()
   }

    func use(tuple: (id: Int, name: String, answer: Bool)) {
        print("[tuple]")
        print("tuple.0: \(tuple.0)")
        print("tuple.1: \(tuple.1)")
        print()

        print("[tuple2]")
        print("tuple.id: \(tuple.id)")
        print("tuple.name: \(tuple.name)")
        print("tuple.answer: \(tuple.answer)")
        print()

    }

}

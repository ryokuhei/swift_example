import Foundation

// p.69
public class _Tuple {

    let tuple: (Int, String)
    let tuple2: (id: Int, name: String, answer: Bool)
    let void: ()

    init() {
        tuple = (1, "いち")
        tuple2 = (2, "john", true)

        // Type Void p.71
        void = ()
        self.useTuple()
   }

    func useTuple() {
        print("[tuple]")
        print("tuple.0: \(tuple.0)")
        print("tuple.1: \(tuple.1)")
        print()

        print("[tuple2]")
        print("tuple2.id: \(tuple2.id)")
        print("tuple2.name: \(tuple2.name)")
        print("tuple2.answer: \(tuple2.answer)")
        print()

    }

}

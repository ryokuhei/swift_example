import Foundation

public class _Repetition {

    init() {
    }

    func forIn(array: Array<Int>) {

        for value in array {
            print(value)
        }

    }

    func forCase(array: Array<Int>, range: Range<Int>) {

        var i = 0

        for case range in array {
            i = i + 1
            print(i)
        }

    }

    func `while`(repeating: Int) {

        var i = 0

        while i < repeating {
            i = i + 1
            print(i)
        }

    }

    func rpeatWhile(repeating: Int) {

        var i = 0

        repeat {
            i = i + 1
            print(i)
        } while i < repeating
    }
}

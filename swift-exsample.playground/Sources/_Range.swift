import Foundation

// p.54
public class _Range {

    public init() {
        print("[Range]")
        onRange(start: 1, end: 10, containtsNo: 2)
        print()

        print("[CountableRange]")
        onCountableRange(start: 1, end: 10, containtsNo: 2)
        print()

        print("[ClosedRange]")
        onClosedRange(start: 1, end: 10, containtsNo: 2)
        print()

        print("[CountableClosedRange]")
        onCountableClosedRange(start: 1, end: 10, containtsNo: 2)
        print()
    }

    public func onRange(start: Int, end: Int, containtsNo: Int? = nil) {
        let range: Range<Int>  = start ..< end

        print("lower: \(range.lowerBound)")
        print("upper: \(range.upperBound)")
        print("count: \(range.count)")
        // Error : Range in not countable
/*
        for vaue in range {
           print(value)
        }
*/
        if  let containtsNo = containtsNo {
            print("contains \(containtsNo): \(range.contains(containtsNo))")
        }

    }

    public func onCountableRange(start: Int, end: Int, containtsNo: Int? = nil) {
        let countableRange: CountableRange<Int>  = start ..< end

        print("lower: \(countableRange.lowerBound)")
        print("upper: \(countableRange.upperBound)")
        print("count: \(countableRange.count)")

        print("value:")
        for value in countableRange {
            print(value)
        }

        if  let containtsNo = containtsNo {
            print("contains \(containtsNo): \(countableRange.contains(containtsNo))")
        }
    }

    public func onClosedRange(start: Int, end: Int, containtsNo: Int? = nil) {
        let closedRange: ClosedRange<Int>  = start ... end

        print("lower: \(closedRange.lowerBound)")
        print("upper: \(closedRange.upperBound)")
        print("count: \(closedRange.count)")
        // Error : ClosedRange in not countable
/*
        for value in closedRange {
            print(value)
        }
*/

        if  let containtsNo = containtsNo {
            print("contains \(containtsNo): \(closedRange.contains(containtsNo))")
        }
    }

    public func onCountableClosedRange(start: Int, end: Int, containtsNo: Int? = nil) {
        let countableClosedRange: CountableClosedRange<Int>  = start ... end

        print("lower: \(countableClosedRange.lowerBound)")
        print("upper: \(countableClosedRange.upperBound)")
        print("count: \(countableClosedRange.count)")

        print("value:")
        for value in countableClosedRange {
            print(value)
        }
        if  let containtsNo = containtsNo {
            print("contains \(containtsNo): \(countableClosedRange.contains(containtsNo))")
        }
    }
}

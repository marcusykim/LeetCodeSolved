import Foundation

class Solution {
    func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
        
        let maxSeats = seats.max()!
        // let minSeats = seats.min()!
        let maxStudents = students.max()!
        // let minStudents = students.min()!

        // let absMaxSeatsVsMinStudents = abs(maxSeats - minStudents)
        // let absMaxStudentsVsMinSeats = abs(maxStudents - minSeats)

        // let maxAbsOverall = min(absMaxSeatsVsMinStudents, absMaxStudentsVsMinSeats)
        var result = 0
        var sortedSeats = seats.sorted()
        var sortedStudents = students.sorted()

        for i in 0..<sortedStudents.count {
            result += abs(sortedStudents[i] - sortedSeats[i])
        }


        //var max = -1
        // outer loop
            // inner loop
                // take abs val of element outer vs element inner, append to temp array of abs vals???????
            // take min abs val of temp array, add to result

        // var result = 0

        // for student in students {

        //     var tempAbsValArray: [Int] = []

        //     for seat in seats {
        //         let absVal = abs(student - seat)
        //         tempAbsValArray.append(absVal)
        //     }
        //     print(tempAbsValArray)
        //     result += tempAbsValArray.min()!
        // }

        return result

    }
}

import Foundation

/**
 * Definition for a street.
 * class Street {
 *     init(doors: [Int]) {}
 *     func openDoor() {}
 *     func closeDoor() {}
 *     func isDoorOpen() -> Bool {}
 *     func moveRight() {}
 *     func moveLeft() {}
 * }
 */
class Solution {
    func houseCount(_ street: Street, _ k: Int) -> Int {
        
        var street = street
        var doors = street.getDoors()

        return doors.count

    }
}

extension Street {
    func getDoors() -> [Int] {
        return doors
    }
}

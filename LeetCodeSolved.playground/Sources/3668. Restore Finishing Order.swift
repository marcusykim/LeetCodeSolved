class Solution {
    func recoverOrder(_ order: [Int], _ friends: [Int]) -> [Int] {
        
        // loop through friends
            // user contains() and find index of ID in order
            // grab element at that index and append that element in result array

        var result: [Int] = []

        for ID in order {
            var index = 0
            if friends.contains(ID) {
                index = friends.index(of: ID)!
                result.append(friends[index])
            }
        }

        return result


    }
}

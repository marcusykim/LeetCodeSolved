import Foundation

class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        // keep dividing by two and add the resulting number to growing sum of matches

        // whenever teams % 2 == 1, add the quotient along with one to the original teams numbers

        // teams = n


        var teams = n

        var matches = 0

        while teams != 1 {
            matches += teams / 2

            if teams % 2 == 1 {
                teams = (teams / 2) + 1
            } else if teams % 2 == 0 {
                teams /= 2
            }

            print("matches: ", matches, ", teams: ", teams )
        }


        return matches
    }
}


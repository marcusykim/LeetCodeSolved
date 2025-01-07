import Foundation

class Solution {
    func areNumbersAscending(_ s: String) -> Bool {
        
        // loop through sentence
            // if we find a token, check that it is larger than the previous token
                //if not return false, otherwise continue looping


        var arrayS = s.split(separator: " ")
        var max = -1

        print(arrayS)


        for wordToken in arrayS {

            print(wordToken)

            if let token = Int(wordToken) {

                print(token)

                if max < 0 {
                    max = token
                } else if max < token {
                    max = token
                } else {
                    return false
                }
            }
        }


        return true

    }
}

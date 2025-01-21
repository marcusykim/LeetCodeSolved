class Solution {
    func replaceDigits(_ s: String) -> String {
        // need array that is the alphabet
        // remember a is 1, not index zero
        //loop, keeping track of s[i - 1] s[i]

        var sArray = Array(s)
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")


        for i in stride(from: 0, to: s.count - 1, by: 2) {
            var letter = sArray[i]
            var num = sArray[i + 1].wholeNumberValue!

            sArray[i + 1] = alphabet[alphabet.firstIndex(of: letter)! + num]
        
        }
        print(sArray)

        let result = String(sArray)

        return result
        

    }
}

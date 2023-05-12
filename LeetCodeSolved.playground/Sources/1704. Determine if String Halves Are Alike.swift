class Solution1704 {
    func halvesAreAlike(_ s: String) -> Bool {

        var sArray: [Character] = Array(s)
        var firstHalf: ArraySlice<Character> = sArray[0...(sArray.count / 2) - 1]
        var secondHalf: ArraySlice<Character> = sArray[(sArray.count / 2)...sArray.count - 1]
        var vowelsInFirstHalf: Int = 0
        var vowelsInSecondHalf: Int = 0

        var vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

        for char in firstHalf {
            if vowels.contains(char) {
                vowelsInFirstHalf += 1
            }
        }

        for char in secondHalf {
            if vowels.contains(char) {
                vowelsInSecondHalf += 1
            }
        }

        print(firstHalf)
        print(secondHalf)



        return vowelsInFirstHalf == vowelsInSecondHalf

    }
}

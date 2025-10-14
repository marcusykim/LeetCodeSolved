class Solution {
    func lateFee(_ daysLate: [Int]) -> Int {
        

        var result = 0

        for book in daysLate {
            switch book {
                case 1:
                    result += 1;
                case 2...5:
                    result += (book * 2);
                case 5...100:
                    result += (book * 3);
                default:
                    result += 0;
            }
        }

        return result

    }
}

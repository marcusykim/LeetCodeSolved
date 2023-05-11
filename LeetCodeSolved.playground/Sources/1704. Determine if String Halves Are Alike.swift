import Foundation

class Solution1704 {
    func halvesAreAlike(_ s: String) -> Bool {
        
        var tempArray = Array(s)

        var vowelCountFirst = 0
        var vowelCountSecond = 0

        var middleIndex = (s.count / 2) + 1

        for i in 0..<tempArray.count / 2 {

            let letter = tempArray[i]

            switch letter {
                case "A":
                    vowelCountFirst += 1
                case "a":
                    vowelCountFirst += 1
                case "E":
                    vowelCountFirst += 1
                case "e":
                    vowelCountFirst += 1
                case "I":
                    vowelCountFirst += 1
                case "i":
                    vowelCountFirst += 1
                case "O":
                    vowelCountFirst += 1
                case "o":
                    vowelCountFirst += 1
                case "U":
                    vowelCountFirst += 1
                case "u":
                    vowelCountFirst += 1
                default:
                    continue
            }
        }

        for i in middleIndex..<tempArray.count / 2{

            let letter = tempArray[i]

            switch letter {
                case "A":
                    vowelCountSecond += 1
                case "a":
                    vowelCountSecond += 1
                case "E":
                    vowelCountSecond += 1
                case "e":
                    vowelCountSecond += 1
                case "I":
                    vowelCountSecond += 1
                case "i":
                    vowelCountSecond += 1
                case "O":
                    vowelCountSecond += 1
                case "o":
                    vowelCountSecond += 1
                case "U":
                    vowelCountSecond += 1
                case "u":
                    vowelCountSecond += 1
                default:
                    continue
            }
        }
    
        return vowelCountFirst == vowelCountSecond
    }
}

import Foundation

// iterate from left and right at the same time
// if ever the right and left do not match, return false

// otherwise, return true


func solution(inputString: String) -> Bool {
    
    var i: Int  = 0
    var j: Int  = inputString.count - 1
    
    var arrayString: [Character] = Array(inputString)
    
    while i < j {
        
        if arrayString[i] != arrayString[j] {
            return false
        }
        
        i += 1
        j -= 1
    }
    
    return true
    
}

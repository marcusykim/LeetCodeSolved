import Foundation


//when we find that the current element is larger than the next element\

// as long as we're at the penultimate or before, remove the ith element, check if it's sorted,
    // if true, return true
//as long as we're past the first element, remove the ith elemet, check it it's sorted

// we call a separate function to text if it's sorted

func solution(sequence: [Int]) -> Bool {
    let count = sequence.count
    for i in 0..<count{
        if (i + 1 < count && sequence[i] >= sequence[i + 1]) {
            var tempArray: [Int] = sequence
            tempArray.remove(at: i)
            let isSorted: Bool = checkIfSorted(tempArray: tempArray)
            if isSorted == true {
                return true
            }
        } else if (i > 0 && sequence[i] <= sequence[i - 1]) {
            var tempArray: [Int] = sequence
            tempArray.remove(at: i)
            let isSorted: Bool = checkIfSorted(tempArray: tempArray)
            
            if isSorted == true {
                return true
            }
        }
        
    }
    
    return false
    
    
}

func checkIfSorted(tempArray: [Int]) -> Bool{
    
   
    for i in 0 ..< tempArray.count {
        if tempArray.count > i + 1 {
            if tempArray[i + 1] <= tempArray[i] {
                return false
            }
        }
    }
    
    return true
}
    

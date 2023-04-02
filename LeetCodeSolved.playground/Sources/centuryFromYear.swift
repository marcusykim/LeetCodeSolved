import Foundation

// we check if the year is evenly divisible by 100, therefore telling us whether we're at the exact last year of a century.
    // if we are, we just return the year divided by 100
    // otherwise, just return the quotient plus 1

func solution(year: Int) -> Int {
    
    if year % 100 == 0 {
        return year / 100
    } else {
        return year / 100 + 1
    }
    
}

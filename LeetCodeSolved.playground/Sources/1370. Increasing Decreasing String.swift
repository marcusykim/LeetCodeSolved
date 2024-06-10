import Foundation

class Solution {
    func sortString(_ s: String) -> String {
        
        var result = ""

        var dict: [Character: Int] = [:]

        for char in s {
            if dict[char] == nil {
                dict[char] = 1
            } else {
                dict[char] = dict[char]! + 1
            }
        }

        let alphabet = "abcdefghijklmnopqrstuvwxyz"

    while !dict.isEmpty {
        for char in alphabet {
            if dict[char] != nil {
                result.append(char)
                dict[char] = dict[char]! - 1

                if dict[char] == 0 {
                    dict.removeValue(forKey: char)
                }
            }
        }

        for char in alphabet.reversed() {
            if dict[char] != nil {
                result.append(char)
                dict[char] = dict[char]! - 1
                
                 if dict[char] == 0 {
                    dict.removeValue(forKey: char)
                }
            }
        }
    }
        return result

    }
}

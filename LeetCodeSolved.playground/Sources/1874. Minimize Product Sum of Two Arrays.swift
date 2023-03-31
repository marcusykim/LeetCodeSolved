import Foundation

class Solution1874 {
    func minProductSum(_ nums1: [Int], _ nums2: [Int]) -> Int {
        
        //iterate through both arrays simultaneously, find the max of the first and multiplying it by the min of the second, then remove those elements.
        // repeat

        // var result: Int = 0
        
        // guard nums1.count != 0 else {
        //     return 0
        // }

     
        // var nums1Mute: [Int]? = nums1
        // var nums2Mute: [Int]? = nums2

        // var temp1Array: [Int] = []
        // var temp2Array: [Int] = []


        // while let numsNewMute = nums1Mute {
         

        //     if numsNewMute.count == 0 {
        //         break
        //     }
        //     var nums1VarMute = numsNewMute
        //     var nums2VarMute = nums2Mute!

        //     var num1Index = 0
        //     var num2Index = 0
            
        //     let max1 = nums1VarMute.max()!
        //     let min2 = nums2VarMute.min()!

        //     result += max1 * min2
                
        //         num1Index = nums1VarMute.firstIndex(of: max1)!
        //         num2Index = nums2VarMute.firstIndex(of: min2)!

        //         nums1Mute!.remove(at: num1Index)
        //         nums2Mute!.remove(at: num2Index)

            
        // }


        // return result


        // ******* the above code failed

        // now attempt to sort both arrays, one of them ascending, the other descending
        // multiply each matching index
        // we know this will work because if we take the opposite to the extreme (multiplying largest by largest, smallest by smallest, we would get the largest value)

        var mute1Nums = nums1
        var mute2Nums = nums2

        mute1Nums = mute1Nums.sorted()
        mute2Nums = mute2Nums.sorted()

        mute2Nums = mute2Nums.reversed()
        var result = 0
        for (index, num) in mute1Nums.enumerated() {

            result += num * mute2Nums[index]

        }

        return result

    }
}

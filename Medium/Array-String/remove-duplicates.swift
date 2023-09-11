//Remove Duplicates from Sorted Array II

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    var i = 1

    while(i < nums.count-1) {
      
      if (nums[i - 1] == nums[i] && nums[i] == nums[i + 1]) {
        nums.remove(at: i)
        continue
        }

        i += 1
    }

    return nums.count
    }
}

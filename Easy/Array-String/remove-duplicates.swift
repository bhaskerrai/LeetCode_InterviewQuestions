class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var i = 1

        while(i < nums.count) {

            if (nums[i - 1] == nums[i]) {
                nums.remove(at: i)
                continue
            }

            i += 1
        }

        return nums.count
    }
}

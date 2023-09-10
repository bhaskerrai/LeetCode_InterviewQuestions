class Solution {
    func majorityElement(_ nums: [Int]) -> Int {

        var counts: [Int: Int] = [:]
        let occurence = nums.count / 2
        
        for i in 0..<nums.count {
          
          counts[nums[i], default:0] += 1
        }

        var number = 0
        for (num, count) in counts {
            if count > occurence {
              number = num
            }
        }

      return number
    }
}

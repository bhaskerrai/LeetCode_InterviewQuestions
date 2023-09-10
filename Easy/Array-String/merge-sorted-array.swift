class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums3 = nums2

        for i in m ..< nums1.count {
            for j in 0..<nums3.count {
                if nums1[i] == 0 {
                    nums1[i] = nums3[j]
                    nums3.remove(at: j)
                    break
                }
            }
        }

        nums1.sort()
    }
}

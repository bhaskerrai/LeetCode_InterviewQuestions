class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {


        var index = -1

        let range = haystack.range(of: needle)
        
        if let range = range {
            index = haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        }
        
        return index
        
    }
}

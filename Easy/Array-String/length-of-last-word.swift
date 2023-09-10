class Solution {
    func lengthOfLastWord(_ s: String) -> Int {

        // Split the string into words.
        let arrayOfwords = s.split(separator: " ")
        
        // Find the last word in the array of words.
        let lastWord = arrayOfwords[arrayOfwords.count - 1]  
        
        // Calculate the length of the last word.
        return lastWord.count
        
    }
}

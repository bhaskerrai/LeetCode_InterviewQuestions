class Solution {
    func reverseWords(_ s: String) -> String {
          
        // Split the string into words.
        let arrayOfWords = s.split(separator: " ")
        var str2 = ""

        var i = arrayOfWords.count - 1
        while(i >= 0) {
            str2 += arrayOfWords[i]
            
            if (i != 0) {
            str2 += " "
            }
            i -= 1
            
        }


        return str2
        
        //OR
        // let reversedArray = arrayOfWords.reversed()
        // return reversedArray.joined(separator: " ")
        
    }
}

//the original one written by me
// func longestCommonPrefix(_ strs: [String]) -> String {

//   var longestPrefix = ""
//   let firstStr = strs[0]

//   if strs.contains("") {
//     return longestPrefix
//   }

//   if strs.count == 1 {
//     if firstStr.count >= 1 {
//       longestPrefix = firstStr
//       return longestPrefix
//     }

//     else {
//       return longestPrefix
//     }
//   }
  
//   var shortestWord = firstStr
  
//   for word in strs {
//       if word.count < shortestWord.count {
//           shortestWord = word
//       }
//   }

//   for i in 0..<shortestWord.count {
      
//       var counter = 0
//       for j in 0..<strs.count-1 {
          
//           let str = strs[j + 1]
//           print(firstStr[firstStr.index(firstStr.startIndex, offsetBy: i)], "in", firstStr)
//           print(str)
          
//           if firstStr[firstStr.index(firstStr.startIndex, offsetBy: i)] == str[str.index(str.startIndex, offsetBy: i)] {
//             counter += 1
//             print(counter)

//             if (counter == strs.count-1) {
//               longestPrefix += String(str[str.index(str.startIndex, offsetBy: i)])
//               print(longestPrefix, "\n")
//               counter = 0
//             }    
//           }

          
          
//           else {
//               return longestPrefix
//           }
//       } 
//   }

//   return longestPrefix
    
// }


// Input: strs = ["flower", "flow", "flight"]
// Output: "fl"



//code by ChatGPT
func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty { return "" }
    
    let firstStr = strs[0]
    
    for (i, char) in firstStr.enumerated() {
        for word in strs.dropFirst() {
            if i >= word.count || word[word.index(word.startIndex, offsetBy: i)] != char {
                return String(firstStr.prefix(i))
            }
        }
    }
    
    return firstStr
}


// Input: strs = ["flower", "flow", "flight"]
// Output: "fl"
print(longestCommonPrefix(["a"]))




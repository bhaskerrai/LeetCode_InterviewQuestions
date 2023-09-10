func romanToInteger(_ s: String) -> Int {

  let romanSymbolsKeys = ["M", "D", "C", "L", "X", "V", "I"]
  let romanSymbolsValue = [1000, 500, 100, 50, 10, 5, 1]

  var res = 0
  var preValue = 0

  for (i, char) in s.enumerated() {

    for j in 0..<romanSymbolsKeys.count {

      if String(char) == romanSymbolsKeys[j] {
        
        if (i != 0) {

          if romanSymbolsValue[j] > preValue {
            res = (res - preValue) + (romanSymbolsValue[j] - preValue)
          }

          else {
            res +=  romanSymbolsValue[j]
          }
          
        }

        else {
          res = romanSymbolsValue[j] + preValue
        }

        preValue = romanSymbolsValue[j]

        break
      }
    }
  }

  return res
}

// print(romanToInteger("MCDXL"))

func romanToInteger2(_ s: String) -> Int {
    let romanSymbolMappings: [Character: Int] = [
        "M": 1000, "D": 500, "C": 100, "L": 50, "X": 10, "V": 5, "I": 1
    ]

    var result = 0
    var previousValue = 0

    for char in s {
        guard let value = romanSymbolMappings[char] else {
            // Handle invalid input (non-Roman numeral character)
            return -1
        }

        if value > previousValue {
            result += value - (2 * previousValue)
        } else {
            result += value
        }

        previousValue = value
    }

    return result
}

print(romanToInteger("IL"))
print(romanToInteger2("IL"))
//VI

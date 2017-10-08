import Cocoa
func isSameFrequency(_ str : String) -> Bool{
    if (str.isEmpty){
        return false
    }
    var previousFrequency = 0
    var previousChar : Character!
    for char in str{
        if (previousChar != char){
            let filteredString = str.filter({ (isSameChar) -> Bool in
                if (String(char) == String(isSameChar)){
                    return true
                }
                return false
            })
            let currentFrequency = filteredString.count
            if (previousFrequency != 0 && previousFrequency != currentFrequency){
                return false
            }
            previousFrequency = currentFrequency
        }
        previousChar = char
    }
    return true
}
func remove1CharAndCheckFrequency(_ str : String) -> Bool{
    for char in str{
        var charCollection = str.characters
        if let startIndex = charCollection.index(of: char){
            let endIndex = charCollection.index(startIndex, offsetBy: 1)
            let range = startIndex..<endIndex
            charCollection.removeSubrange(range)
            let removedStr = String(charCollection)
            if (isSameFrequency(removedStr)){
                return true
            }
        }
    }
    return false
}
func isValid(_ str : String) -> Bool{
    if (isSameFrequency(str) || remove1CharAndCheckFrequency(str)){
        return true
    }
    return false
}

let isSherlockValidString = isValid("aabbccddeeffgg")
print("aabbccddeeffgg -- All characters are at same frequency")
print(isSherlockValidString)
let isSherlockValidString1 = isValid("aaabbbcccdddd")
print("aaabbbcccdddd - -- All characters are not in same freq, but removing (anyone) '1' character 'd' gives same freq")
print(isSherlockValidString1)
let isSherlockValidString2 = isValid("aaabbbcccddddd")
print("aaabbbcccddddd - All characters are not in same freq, removing anyone '1' character also fails to produce same frequency")
print(isSherlockValidString2)


class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        // var longest = ""
        // for str in strs {
        //     var char = str[0]
        //     for c in str {
        //         if c == char {
        //             cha
        //         }
        //     }
        // }
        var result = ""
        guard let first = strs.first else { return "" }
    for (i, char) in first.enumerated() {
        for str in strs {
            let chars = Array(str)
            if i >= chars.count || char != chars[i] {
                return result
            }
        }
        result.append(char)
    }
    return result
    }
}
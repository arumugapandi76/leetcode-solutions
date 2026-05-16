class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var mergedArray = nums1 + nums2
        mergedArray = mergedArray.sorted()
        print(mergedArray)
        if mergedArray.count == 1 {
            return Double(mergedArray.first ?? 0)
        }
        else if mergedArray.count % 2 == 0 {
            var index = mergedArray.count/2 - 1
            return (Double(mergedArray[index]) + Double(mergedArray[index+1]))/2
        } else {
            var medianIndex = mergedArray.count / 2
            return Double(mergedArray[medianIndex])
        }
    }
}
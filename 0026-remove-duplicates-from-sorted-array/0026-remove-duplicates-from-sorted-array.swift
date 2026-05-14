class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var uniqueElements:[Int] = []
        var nums1 = Set<Int>(nums)
        nums = Array(nums1).sorted()
        return nums1.count
    }
}
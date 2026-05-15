class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count-1
        var result = 0
        while left < right{
            var width = right - left
            var minHeight = min(height[left], height[right])
            var area = width * minHeight
            result = max(result, area)

            if height[left] < height[right] {
                left += 1
            }
            else {
                right -= 1
            }
        }
        return result
    }
}
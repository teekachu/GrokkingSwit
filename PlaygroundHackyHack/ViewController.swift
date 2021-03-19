import Foundation

@main
class Demo {
    
    static let shared = Demo()
    
    static func main() -> Void{
        // run code
        
        // MARK: - PROBLEM 1:
        // Returning the INDEX of the number we are searching for
        func binarySearch(list: [Int], item: Int) -> Int?{
            // indexes
            var low = 0
            var high = list.count - 1
            var mid = 0
            var guess = 0 // only number here
            
            while low <= high {
                mid = (low + high) / 2
                guess = list[mid]
                
                if guess == item {
                    return mid
                } else if guess > item { /// if my guess is > than the item itself ( at mid index) , then we need to go lower, and we change the high to be mid index - 1
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            }
            
            return nil
        }
        
        //        let list = [1,3,5,7,9]
        //        let searchIndices = binarySearch(list: list, item: 0)
        //        print(searchIndices)
        
        
        // MARK: - PROBLEM 2: Selection sort
        // Sort an array from smallest to largest
        func sortArrayToIncrease(for array:[Int]) -> [Int] {

            // step 1: look through the array and find the smallest number index
            /// created findSmallestNumber()

            // step 2: add it to sorted arr
            // step 3: repeat
            var originalArr = array
            var sortedArr = [Int]()

            for _ in 0 ..< originalArr.count {
                let indx = shared.findSmallestIndex(in: originalArr)
                sortedArr.append(originalArr[indx])
                originalArr.remove(at: indx)
            }

            // step 4 : return sortedArr
            return sortedArr
        }

//        let sortedSolution = sortArrayToIncrease(for: [7,13,64,21,40])
//        print(sortedSolution)

        
        func findTheLargestNumberIn(_ array: [Int]) -> Int {
            var max = array[0]
            for i in 1..<array.count {
                if array[i] > max {
                    max = array[i]
                }
            }
            
            return max
        }
        
//        print(findTheLargestNumberIn([1,3,55]))
        
        
        var array = [1,4,7,8]
        array.sort()
        
        
        // MARK: - PROBLEM 3: Recursion
        func sumOfNumbersIn(_ array: [Int]) -> Int {
            guard !array.isEmpty else {return 0}
            
            return array.first! + sumOfNumbersIn(Array(array.dropFirst()))// Make sure to typecast as an Array
        }
        
//        print(sumOfNumbersIn([1,2,3,4]))
       
        
        func countAnArray(_ numbers: [Int]) -> Int{
            guard !numbers.isEmpty else {return 0}
            
            return 1 + countAnArray(Array(numbers.dropFirst()))
        }
        
//        print(countAnArray([1,2,3,4,5]))
        
        
    }
    
    // MARK: - Supports
    
    /// For Problem 2
    func findSmallestIndex(in array: [Int]) -> Int {
        // Set the min as the first number in array
        var minValue = array[0]
        var minIndex = 0
        
        // start with the second number to compare
        for i in 1 ..< array.count {
            if (array[i] ) < minValue {
                minValue = array[i]
                minIndex = i
            }
        }
        
        return minIndex
    }
    
    
    
    
}







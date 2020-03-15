import UIKit

func bubbleSort(with inputArray: [Int]) -> [Int] {
    
    guard inputArray.count > 1 else { return inputArray }
    
    var sortedArray = inputArray
    let count = sortedArray.count
    var isSwapped = false
    
    repeat {
        isSwapped = false
        for index in 1..<count {
            if sortedArray[index] < sortedArray[index-1] {
                sortedArray.swapAt(index-1, index)
                isSwapped = true
            }
        }
        
    } while isSwapped
    
    
    return sortedArray
}

let testArray = [10,4,2,9,1,2]
bubbleSort(with: testArray)

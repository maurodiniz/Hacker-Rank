import UIKit

func selectionSort(with inputArray: [Int]) -> [Int] {
    
    guard inputArray.count > 1 else { return inputArray}
    
    var sortedArray = inputArray
    
    for index in 0..<sortedArray.count {
        var lowest = index
        
        for index2 in index+1..<sortedArray.count {
            if sortedArray[index2] < sortedArray[lowest] {
                lowest = index2
            }
        }
        
        if index != lowest {
            sortedArray.swapAt(index, lowest)
        }
    }
    
    
    return sortedArray
}

let arrayTest = [5,12,78,11,33,18,28,14,2,8,1,39,3,88,16,2]
selectionSort(with: arrayTest)

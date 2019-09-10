import UIKit

let arr = [10,10,11,9,2]
var arrResult = Array<Int>()

for ignorar in arr {
    arrResult.append(arr.reduce(0,+) - ignorar)
}
print(arrResult.max()!,arrResult.min()!)

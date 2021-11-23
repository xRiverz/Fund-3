import UIKit

//Write a program that appends the numbers 1-255 to an array

var array = [Int]()
for i in 1...255 {
    array.append(i)
}

//Using that same array swap two random values in the array

let swap = Int((arc4random_uniform(UInt32(array.count))))
let swap2 = Int(arc4random_uniform(UInt32(array.count)))

let s = array[swap]
array[swap] = array[swap2]
array[swap2] = s

//write the code that swaps random values 100 times (You've created a "Shuffle"!)

for _ in 0..<100 {
    
    let swap = Int(arc4random_uniform(UInt32(array.count)))
    let swap2 = Int(arc4random_uniform(UInt32(array.count)))

    let s = array[swap]
    array[swap] = array[swap2]
    array[swap2] = s
    
}
print(array)

//Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.

for i in 0..<array.count {
    if array[i] == 42 {
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
}
}

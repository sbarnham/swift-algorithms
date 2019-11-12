//
//  main.swift
//  Standard Algorithms
//
//  Created by Barnham, Samuel (ABH) on 05/11/2019.
//  Copyright © 2019 Barnham, Samuel (ABH). All rights reserved.
//

import Foundation

let sorting = Sorting()
let algorithm_name = ["Bubble Sort", "Merge Sort", "Linear Search", "Binary Search", "Quick Sort", "Insertion Sort"]
let algorithm_desc = ["Compares each item to the next and switches them accordingly", "Splits items into 1-item lists and merges them back together while rearranging them", "Checks each item in the list against desired search item", "Chooses a midpoint and checks if item is bigger or smaller than midpoint. Discards all items to the right or left of list depending on outcome. Requires a sorted list.", "Picks a pivot and partitions list according to pivot and then pieces the list back together again.", "An item is picked out and compared against the other items in the list to see where it fits. This process repeats until the list is sorted."]
let algorithm_timecomplex = ["Best: n    Worst/average: n^2", "Best/Worst/Average: nlogn", "Best: 1  Worst/Average: n", "Best: 1     Worst/Average: logn", "Best/Average: nlogn    Worst:  n^2", "Best: n   Worst/Average:  n^2"]
let algorithm_spacecomplex = ["1", "n", "1", "1", "logn", "1"]
let data = [6, 2, 3, 7, 8, 19, 14, 4]
let searchItem = 7

var i = 0
while i < 6 {
    print(algorithm_name[i])
    print(algorithm_desc[i])
    let timecomplex = algorithm_timecomplex[i]
    let spacecomplex = algorithm_spacecomplex[i]
    print("Time complexity is \(timecomplex)")
    print("Space complexity is \(spacecomplex)")
    print("Input array is \(data)")
    print("Search item is 7 (if applicable)")
    if i == 0 {
        print(sorting.bubbleSort(data:data))
    } else if i == 1 {
        print(sorting.mergeSort(data:data))
    } else if i == 2 {
        print(sorting.linearSearch(data:data, searchItem: searchItem))
    } else if i == 3 {
        print(sorting.binarySearch(data:data, searchItem: searchItem))
    } else if i == 4 {
        print(sorting.quickSort(data:data))
    } else {
        print(sorting.insertionSort(data:data))
    }
    i = i + 1
}

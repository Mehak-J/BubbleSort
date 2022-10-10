
//let unsortedWords = ["iwantsushi", "cowboy", "jaggu", "ant"]

var words = [String]()

while let line = readLine() {
    
    if (line.count == 0) {break;}
    words.append(line)
}

func swap(strings:inout [String], firstIndex:Int, secondIndex:Int) {
   
    let tmp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = tmp
   
}

func bubbleSort() {
    
    for i in 0 ..< words.count{
        for j in 1 ..< words.count - i{
            if(words[j].lowercased() < words[j-1].lowercased()) {
                swap(strings:&words, firstIndex: j, secondIndex: j-1)
            }
        }
        
    }
    print(words)
}

bubbleSort()                   






///print("pass: \(passCount), Swaps: \(swapCount

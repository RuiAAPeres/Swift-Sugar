Note: Used as an exercise mainly, still you can make use of it of course

## Inspiration

Swift Sugar is heavily inspired on [ObjectiveSugar](https://github.com/supermarin/ObjectiveSugar). 

## Documentation

**Int extensions** 

``` swift
3.times({
    println("Hello!")
})
// Hello!
// Hello!
// Hello!
```

``` swift
3.timesWithIndex({
    index in println(index)
})
// 0
// 1
// 2
```

``` swift
3.upTo(5,{
    index in println(index)
})
// 3
// 4
```

``` swift
5.downTo(0, doTask: {
    index in println(index)
})
// 5
// 4
// 3
// 2
// 1
```

**Array functions** 
``` swift
[1,2,3,4].initial(3)
// [1,2,3]
```

``` swift
[1,2,3,4].initial()
// [1]
```

``` swift
[1,2,3,4].drop(){$0 % 2 ==0}
// [2,4]
```

``` swift
[1,2,3,4].remove(2)
// [3,4]
```

``` swift
[1,2,3,4,1].numberTimesRepeated(1)
// 2
```

**String functions** 

``` swift
"Swift programming".length
// 17
```

``` swift
"Swift programming"[1]
// w
```

``` swift
"Swift programming"[-4]
// m
```

``` swift
String.join(["S","w","i"])
//Swi
```

``` swift
String.join("S","w","i","f","t")
//Swift
```

``` swift
"Swift programming".split()
//["Swift", "programming"]
```

``` swift
"Swift programming".split(delimiter:"r")
//["Swift p", "og", "amming"]
```

``` swift
"Swift programming".indexOfString("mm")
// 12
```

``` swift
"Swift programming".toCharacterArray()
//["S","w","i","f","t"," ","p","r","o","g","r","a","m","m","i","n","g"]
```

``` swift
"Swift programming".reverse()
//gnimmargorp tfiwS
```

**Swift Sugar (Global functions)** 

``` swift
let x : [(Int,Int)] = zip([1,2,3,4,5], [1,2,3])
// [(1,1),(2,2),(3,3)]
```

### Swift (Global functions)
---

**Collections**  
``` swift
minElement([1,2,3,4])
// 1
```

``` swift
manElement([1,2,3,4])
//4
```




















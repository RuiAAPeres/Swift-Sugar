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


3.timesWithIndex({
    index in println(index)
})
// 0
// 1
// 2

3.upTo(5,{
    index in println(index)
})
// 3
// 4

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
take([1,2,3,4],3)
// [1,2,3]
```
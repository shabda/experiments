package main

import "fmt"

func main(){
    var fibs []int
    fibs = append(fibs, 1)
    fibs = append(fibs, 2)
    till := 4000000
    i := 0
    for fibs[i+1] + fibs[i] < till{
        fibs = append(fibs, fibs[i] + fibs[i+1])
        i += 1
    }

    fmt.Println(fibs)


    sum := 0
    for _, value := range fibs {
        if value % 2 ==0{
            sum += value
        }

    }
    fmt.Println(sum)

}

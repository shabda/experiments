package main

import "fmt"

func main(){
    i := 1;
    sum := 0
    for i < 1000{
        if i%3==0 || i%5==0 {
            sum += i;
        }
        i += 1;
    }
    fmt.Println(sum)
}

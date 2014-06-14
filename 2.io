Car := Object clone
Car drive := method (("Vroom" println))
Car drive
Ferrari := Car clone
Ferrari drive := method(("Vroooooom" println))

myCar := Car clone
sachinCar := Ferrari clone
myCar drive
sachinCar drive
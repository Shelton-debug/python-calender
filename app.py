class car:
    car_name = "BMW"
    def move(self):
        print(self.car_name + " car is moving")
        
class truck:
    truck_name = "TATA"
    def move(self):
        print(self.truck_name + " truck is moving")

class bus:
    bus_name = "Volvo"
    def move(self):
        print(self.bus_name + " bus is moving")
        
vehicles = [car(), truck(), bus()]
for v in vehicles:
    v.move()
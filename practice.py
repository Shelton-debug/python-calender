class vehicles:
    def __init__(self, name, max_speed, mileage):
        self.name = name
        self.max_speed = max_speed
        self.mileage = mileage

    def seating_capacity(self, capacity=5):
        return f"The seating capacity of a {self.name} is {capacity} passengers."
    
class cars(vehicles):
    def seating_capacity(self, capacity=5):
        return super().seating_capacity(capacity=capacity)
    
class bus(vehicles):
    def seating_capacity(self, capacity=50):
        return super().seating_capacity(capacity=capacity)
    
car1 = cars("Audi", 240, 18)
car2 = cars("BMW", 250, 20)
bus1 = bus("Volvo", 180, 12)
print(car1.seating_capacity())
print(car2.seating_capacity(4))
print(bus1.seating_capacity())

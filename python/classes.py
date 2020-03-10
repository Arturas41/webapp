from vehicle import Vehicle, ElectricVehicle

vehicle_object = Vehicle('Honda', 'Ridgeline', 'Truck')

print(vehicle_object.fuel_level)
vehicle_object.fuel_level = 7
print(vehicle_object.fuel_level)

print(vehicle_object.brand)
print(vehicle_object.model)
print(vehicle_object.type)

vehicle_object.fuel_up()
vehicle_object.drive()

vehicle_object.update_fuel_level(10)
print(vehicle_object.fuel_level)
vehicle_object.update_fuel_level(99)

vehicle_object.get_gas(3)

electric_vehicle = ElectricVehicle('Tesla', 'Model 3', 'Car')
electric_vehicle.charge()
electric_vehicle.fuel_up()
print(electric_vehicle.battery.get_range())
electric_vehicle.drive()



gas_fleet = []
electric_fleet = []
 
for _ in range(100):
    vehicle = Vehicle('Honda', 'Civic', 'Car')
    gas_fleet.append(vehicle)
for _ in range(50):
    evehicle = ElectricVehicle('Nissan', 'Leaf', 'Car')
    electric_fleet.append(evehicle)
for vehicle in gas_fleet:
    vehicle.fuel_up()
for evehicle in electric_fleet:
    evehicle.charge()
print(f'Gas vehicles: {len(gas_fleet)}')
print(f'Electric vehicles: {len(electric_fleet)}')
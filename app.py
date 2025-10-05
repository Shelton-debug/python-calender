class smartdevice:
    def __init__(self, name, device_type, status="off"):
        self.name = name
        self.device_type = device_type
        self.status = status

    def turn_on(self):
        self.status = "on"
        print(f"{self.name} is now ON.")

    def turn_off(self):
        self.status = "off"
        print(f"{self.name} is now OFF.")

    def get_status(self):
        return f"{self.name} is currently {self.status}."
    
    def maintain(self):
        print(f"Maintaining {self.name}. Please wait...")
        # Simulate maintenance tasks
        print(f"{self.name} maintenance completed.")
    
    def update_firmware(self, version):
        print(f"Updating {self.name} to firmware version {version}.")
        # Simulate firmware update
        print(f"{self.name} firmware updated to version {version}.")
    
def main():
    print("Smart Device Management System")
    print("-------------------------------")
        
    name = input("Enter device name: ")
    device_type = input("Enter device type (e.g., Light, Thermostat): ")
    device = smartdevice(name, device_type)
    while True:
        print("\nOptions:")
        print("1. Turn ON")
        print("2. Turn OFF")
        print("3. Get Status")
        print("4. Maintain Device")
        print("5. Update Firmware")
        print("6. Exit")

        action = input("Choose an action (1-6): ")
                
        if action == '1':
            device.turn_on()
        elif action == '2':
            device.turn_off()
        elif action == '3':
            print(device.get_status())
        elif action == '4':
            device.maintain()
        elif action == '5':
            version = input("Enter firmware version to update to: ")
            device.update_firmware(version)
        elif action == '6':
            print("Exiting device management.")
            break
        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main()
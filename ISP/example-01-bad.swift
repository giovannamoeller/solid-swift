import Foundation

//: This example violates ISP because DVDPlayer and AirConditioner are forced to implement methods they don't use

protocol Device {
	func play()
	func stop()
	func next()
	func previous()
	func setTemperature(temperature: Double)
}

class DVDPlayer: Device {
	func play() {
		print("Playing DVD")
	}

	func stop() {
		print("Stopping DVD")
	}

	func next() {
		print("Next DVD chapter")
	}

	func previous() {
		print("Previous DVD chapter")
	}

	func setTemperature(temperature: Double) {
		// Doesn't make sense for a DVD player
	}
}

class AirConditioner: Device {
	func play() {
		// Doesn't make sense for an air conditioner
	}

	func stop() {
		// Doesn't make sense for an air conditioner
	}

	func next() {
		// Doesn't make sense for an air conditioner
	}

	func previous() {
		// Doesn't make sense for an air conditioner
	}

	func setTemperature(temperature: Double) {
		print("Setting temperature to \(temperature).")
	}
}
import Foundation

protocol Playable {
	func play()
	func stop()
	func next()
	func previous()
}

protocol TemperatureControl {
  func setTemperature(temperature: Double)
}

class DVDPlayer: Playable {
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
}

class AirConditioner: TemperatureControl {
	func setTemperature(temperature: Double) {
		print("Setting temperature to \(temperature).")
	}
}
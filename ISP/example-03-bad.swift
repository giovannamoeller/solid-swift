import Foundation

//: This example violates ISP because EmailNotificationService needs to implement methods they don't use

protocol NotificationService {
    func sendEmail(email: String, message: String)
    func sendSMS(phoneNumber: String, message: String)
    func sendPushNotification(deviceID: String, message: String)
}

class EmailNotificationService: NotificationService {
    func sendEmail(email: String, message: String) {
        print("Sending email to \(email) with message: \(message)")
    }
    
    func sendSMS(phoneNumber: String, message: String) {
        fatalError("Email service doesn't support SMS")
    }
    
    func sendPushNotification(deviceID: String, message: String) {
        fatalError("Email service doesn't support push notifications")
    }
}

let emailService = EmailNotificationService()
emailService.sendEmail(email: "giovanna@gmail.com", message: "Hello, world!")

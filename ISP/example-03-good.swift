import Foundation

protocol EmailNotifier {
    func sendEmail(email: String, message: String)
}

protocol SMSNotifier {
    func sendSMS(phoneNumber: String, message: String)
}

protocol PushNotificationsNotifier {
    func sendPushNotification(deviceID: String, message: String)
}

class EmailNotificationService: EmailNotifier {
    func sendEmail(email: String, message: String) {
        print("Sending email to \(email) with message: \(message)")
    }
}

let emailService = EmailNotificationService()
emailService.sendEmail(email: "giovanna@gmail.com", message: "Hello, world!")

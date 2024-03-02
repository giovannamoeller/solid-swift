import Foundation

//: This code violates SRP because ContactManager is responsible for too many things:
//: 1. Adding a new contact
//: 2. Removing a contact
//: 3. Saving and loading contacts from core data

class ContactManager {
    var contacts = [String: String]()
    
    func addContact(name: String, phoneNumber: String) {
        contacts[phoneNumber] = name
    }
    
    func removeContact(phoneNumber: String) {
        contacts.removeValue(forKey: phoneNumber)
    }
    
    func saveContactsToCoreData() {
        // Save contact in core data
    }
    
    func loadContactsFromCoreData() {
        // Load contacts from core data
    }
}
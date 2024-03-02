import Foundation

class ContactManager {
    var contacts = [String: String]()
    let persistence: PersistenceManager
    
    init(persistence: PersistenceManager) {
        self.persistence = persistence
    }
    
    func addContact(name: String, phoneNumber: String) {
        contacts[phoneNumber] = name
    }
    
    func removeContact(phoneNumber: String) {
        contacts.removeValue(forKey: phoneNumber)
    }
}

class PersistenceManager {
    func saveContactsToCoreData(contacts: [String: String]) {
        // Save contact in core data
    }
    
    func loadContactsFromCoreData() -> [String: String] {
        // Load contacts from core data
        return [:]
    }
}
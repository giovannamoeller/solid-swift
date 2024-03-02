import Foundation

protocol SavingDocument {
    func save()
}

class Document: SavingDocument {
    func save() {
        print("Saving document...")
    }
}

class TextDocument: SavingDocument {
    func save() {
        print("Saving text document...")
    }
}

class OnlyReadingDocument {
}

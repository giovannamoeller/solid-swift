import Foundation

//: This code violates LSP because Document child classes expect the saving operation without causing any errors, but OnlyReadingDocument is breaking it

class Document {
    func save() {
        print("Saving document...")
    }
}

class TextDocument: Document {
    override func save() {
        print("Saving text document...")
    }
}

class OnlyReadingDocument: Document {
    override func save() {
        fatalError("Can not save a reading only document")
    }
}

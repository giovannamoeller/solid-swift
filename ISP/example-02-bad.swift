import Foundation

//: This code violates ISP because SimplePrinter is forced to implement faxDocument and scanDocument, even though it doesn't support these functionalities

protocol DocumentManager {
    func printDocument()
    func faxDocument()
    func scanDocument()
}

class SimplePrinter: DocumentManager {
    func printDocument() {
        print("Printing document..")
    }
    
    func faxDocument() {
        fatalError("This printer doesn't support fax")
    }
    
    func scanDocument() {
        fatalError("This printer doesn't support scanning")
    }
}

let printer = SimplePrinter()
printer.printDocument()
//printer.faxDocument()

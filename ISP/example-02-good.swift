import Foundation

protocol Printer {
    func printDocument()
}

protocol FaxMachine {
    func faxDocument()
}

protocol Scanner {
    func scanDocument()
}

class SimplePrinter: Printer {
    func printDocument() {
        print("Printing document..")
    }
}

class AdvancedMachine: Printer, FaxMachine, Scanner {
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

let advancedMachine = AdvancedMachine()
advancedMachine.faxDocument()
advancedMachine.scanDocument()

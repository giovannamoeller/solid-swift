import Foundation

//: This code violates SRP because NetworkingManager is responsible for too many things:
//: 1. Request to API
//: 2. Convert JSON to model
//: 3. Save results in core data

class NetworkingManager {
    private func request() -> Data? { /* private functions can not be tested */
        return Data()
    }
    
    private func convertJSONToModel(with data: Data?) -> [AnyObject]? {
        return [AnyObject]()
    }
    
    private func saveInCoreData(model: [AnyObject]?) {
        // Save in core data
    }
    
    public func create() {
        let data = request()
        let model = convertJSONToModel(with: data)
        saveInCoreData(model: model)
    }
}

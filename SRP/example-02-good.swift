import Foundation

class RequestManager {
    func request() -> Data? {
        return Data()
    }
}

class JSONParseManager {
    func convertJSONToModel(with data: Data?) -> [AnyObject]? {
        return [AnyObject]()
    }
}

class PersistenceManager {
    func save(model: [AnyObject]?) {
        // Save in core data (or any other database)
    }
}

class NetworkingManager {
    private let requestManager: RequestManager
    private let parseManager: JSONParseManager
    private let persistenceManager: PersistenceManager
    
    init(requestManager: RequestManager, 
         parseManager: JSONParseManager,
         persistenceManager: PersistenceManager) {
        self.requestManager = requestManager
        self.parseManager = parseManager
        self.persistenceManager = persistenceManager
    }
    
    func create() {
        let data = requestManager.request()
        let model = parseManager.convertJSONToModel(with: data)
        persistenceManager.save(model: model)
    }
}

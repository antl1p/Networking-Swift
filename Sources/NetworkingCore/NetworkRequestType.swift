public protocol NetworkRequestType {
//    associatedtype ResponseType: Codable
//    associatedtype ErrorType: Error
    
    var httpMethod: String { get }
}

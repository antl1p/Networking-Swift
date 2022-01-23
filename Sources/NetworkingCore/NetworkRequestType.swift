import Foundation

public protocol NetworkRequestType {
    associatedtype ResponseType: Codable
    
    var urlRequest: URLRequest { get }
    
    func parseResponse(data: Data?, urlResponse: URLResponse?, error: Error?) throws -> ResponseType
}

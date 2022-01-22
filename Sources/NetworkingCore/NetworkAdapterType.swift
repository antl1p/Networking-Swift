import Foundation

public protocol NetworkAdapterType {
    func executeRequest(request: NetworkRequestType) throws
}

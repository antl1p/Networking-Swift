import Foundation

public protocol NetworkAdapterType {
    associatedtype DataTaskType
    
    func execute<T: NetworkRequestType>(request: T, completion: @escaping (Result<T.ResponseType, Error>) -> Void) throws -> DataTaskType
}

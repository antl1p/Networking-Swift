import Foundation
import NetworkingCore
import SwiftUI

public final class URLSessionAdapter: NetworkAdapterType {
    public typealias DataTaskType = URLSessionDataTask
    
    private let sessionClient: URLSession
    
    public init(sessionClient: URLSession = URLSession.shared) {
        self.sessionClient = sessionClient
    }
    
    public func execute<T: NetworkRequestType>(request: T, completion: @escaping (Result<T.ResponseType, Error>) -> Void) throws -> DataTaskType {
        
        let task = sessionClient.dataTask(with: request.urlRequest) { data, urlResponse, error in
            do {
                let result = try request.parseResponse(data: data, urlResponse: urlResponse, error: error)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
        return task
    }
}

//
//  APIClient.swift
//  MyNewsApp
//
//  Created by Miguel Ulloa on 02/02/24.
//

import Foundation

/// Class to make the connection to the API.
final class APIClient {
    
    // MARK: Properties
    private let apiKey = "587c18270e92411fbb5f311dbbb9b390"
    
    // MARK: Methods
    
    /// Gets the data
    /// - Returns: The data or an Error
    func getNews() async -> Result<NewResponseModel, NetworkError> {
        
        // Validate Url
        guard let apiUrl = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(apiKey)") else {
            return .failure(.invalidURL)
        }
        
        do{
            // Send request
            let (data, response) = try await URLSession.shared.data(from: apiUrl)

            // Validate http Response
            guard let httpResponse = response as? HTTPURLResponse else{
                return .failure(.httpResponseError)
            }
            
            // Valide Http Code
            if (httpResponse.statusCode > 299){
                return .failure(.statusCodeError)
            }
            
            // Parsing data
            let decoder = JSONDecoder()
            do {
                let decodeData = try decoder.decode(NewResponseModel.self, from: data)
                print(decodeData)
                return .success(decodeData)
            } catch {
                return .failure(.couldNotDecodeData)
            }
            
        } catch {
            return .failure(.generic)
        }
    }

}

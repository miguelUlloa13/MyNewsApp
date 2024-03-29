//
//  NetworkError.swift
//  MyNewsApp
//
//  Created by Miguel Ulloa on 02/02/24.
//

import Foundation

/// Type of errors we may encounter while trying to query the API.
enum NetworkError: String, Error {
    case invalidURL
    case serializationFailed
    case generic
    case couldNotDecodeData
    case httpResponseError
    case statusCodeError = "An error occurred while trying to query the API: status code"
    case jsonDecoder = "Error trying to extract data from JSON."
    case unauthorized
}

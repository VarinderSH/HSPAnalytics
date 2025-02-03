//
//  APIClient.swift
//  HSP-Analytics
//
//  Created by Admin on 2/3/25.
//

import Foundation



class APIClient {
    static let shared = APIClient()
    
    private let baseURL = "https://hsp-analytic-kwdph.ondigitalocean.app/hsp-analytic-v2/hsp-event"
    
    private init() {}
    
    func sendEvent(event: EventRequest, completion: @escaping (Bool) -> Void) {
        guard let url = URL(string: baseURL) else {
            completion(false)
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        if let jsonData = event.toJSONData() {
            request.httpBody = jsonData
            let task = URLSession.shared.dataTask(with: request) { _, response, error in
                if let error = error {
                    print("Error sending event: \(error)")
                    completion(false)
                } else if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
                    completion(true)
                } else {
                    completion(false)
                }
            }
            task.resume()
        }
    }
}
 

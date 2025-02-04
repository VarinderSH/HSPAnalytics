//
//  File.swift
//  HSP-Analytics
//
//  Created by Admin on 2/3/25.
//

import Foundation

public enum EventType: String {
    case appCrash = "APP_CRASH"
    case appLaunch = "APP_LAUNCH"
    case featureInteraction = "FEATURE_INTERACTION"
    case feedback = "FEEDBACK"
    case notificationInteraction = "NOTIFICATION_INTERACTION"
    case purchase = "PURCHASE"
    case screenView = "SCREEN_VIEW"
    case subscription = "SUBSCRIPTION"
    case trial = "TRIAL_STARTED"
    case unsubscribe = "UNSUBSCRIBE"
}

public struct EventRequest: Codable {
    let eventType: String
    let eventData: [String: Any]
    let timestamp: String
    
    init(eventType: EventType, eventData: [String: Any]) {
        self.eventType = eventType.rawValue
        self.eventData = eventData
        self.timestamp = ISO8601DateFormatter().string(from: Date())
    }
    
    enum CodingKeys: String, CodingKey {
        case eventType, eventData, timestamp
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventType, forKey: .eventType)
        try container.encode(timestamp, forKey: .timestamp)
        
        let jsonData = try JSONSerialization.data(withJSONObject: eventData, options: [])
        let jsonString = String(data: jsonData, encoding: .utf8) ?? "{}"
        try container.encode(jsonString, forKey: .eventData)
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        eventType = try container.decode(String.self, forKey: .eventType)
        timestamp = try container.decode(String.self, forKey: .timestamp)
        
        let jsonString = try container.decode(String.self, forKey: .eventData)
        if let data = jsonString.data(using: .utf8),
           let jsonObject = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
            eventData = jsonObject ?? [:]
        } else {
            eventData = [:]
        }
    }
    
    func toJSONData() -> Data? {
        let encoder = JSONEncoder()
//        encoder.outputFormatting = .prettyPrinted // Optional for readability
        
        do {
            return try encoder.encode(self)
//            return String(data: jsonData, encoding: .utf8)
        } catch {
            print("Failed to convert EventRequest to JSON:", error)
            return nil
        }
    }
}

//
//  File.swift
//  HSP-Analytics
//
//  Created by Admin on 2/3/25.
//

import Foundation

public enum EventType: String, Codable {
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
    let eventType: EventType
    let eventData: EventDataModel

    init(eventType: EventType, eventData: EventDataModel) {
        self.eventType = eventType
        self.eventData = eventData
    }

    enum CodingKeys: String, CodingKey {
        case eventType, eventData
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventType, forKey: .eventType)
        try container.encode(eventData, forKey: .eventData)
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        eventType = try container.decode(EventType.self, forKey: .eventType)
        eventData = try container.decode(EventDataModel.self, forKey: .eventData)
    }

    func toJSONString() -> String? {
        do {
            let jsonData = try JSONEncoder().encode(self)
            return String(data: jsonData, encoding: .utf8)
        } catch {
            print("Failed to convert EventRequest to JSON:", error)
            return nil
        }
    }
}

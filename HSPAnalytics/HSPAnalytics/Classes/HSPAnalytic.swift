//
//  HSPAnalytic.swift
//  hsp-analytics
//
//  Created by Admin on 2/3/25.
//

import Foundation

public struct AnalyticConfig {
    public let api: String
    public let orgToken: String
    // Public initializer to allow access from other modules
    public init(api: String, orgToken: String) {
        self.api = api
        self.orgToken = orgToken
    }
}

public class HSPAnalytic {
    private var config: AnalyticConfig?
    public static let shared = HSPAnalytic()
    private var apiClient: APIClient?
    private init() {}

    private var headers: [String: String]? {
        guard let orgToken = config?.orgToken else { return nil }
        return ["orgToken": orgToken]
    }

    public func startAnalytic(config: AnalyticConfig) {
        self.config = config
        self.apiClient = APIClient(baseURL: config.api)
    }

    public func logEvent(eventType: EventType, eventData: EventDataModel) {
        apiClient?.sendEvent(event: EventRequest(eventType: eventType, eventData: eventData), headers: headers ?? [:]) { success in
            debugPrint(success ? "Event logged successfully: \(eventType.rawValue)" : "Failed to log event: \(eventType.rawValue)")
        }
    }
    
    public func logScreenView(eventData: EventDataModel) {
        apiClient?.sendEvent(event: EventRequest(eventType: .screenView, eventData: eventData), headers: headers ?? [:]) { success in
            debugPrint(success ? "Event logged successfully: \(EventType.screenView.rawValue)" : "Failed to log event: \(EventType.screenView.rawValue)")
        }
    }
    
    public func logPurchaseEvent(eventData: EventDataModel) {
        apiClient?.sendEvent(event: EventRequest(eventType: .purchase, eventData: eventData), headers: headers ?? [:]) { success in
            debugPrint(success ? "Event logged successfully: \(EventType.screenView.rawValue)" : "Failed to log event: \(EventType.screenView.rawValue)")
        }
    }
    
    public func logExifEvent(eventData: EventDataModel) {
        apiClient?.sendEvent(event: EventRequest(eventType: ., eventData: eventData), headers: headers ?? [:]) { success in
            debugPrint(success ? "Event logged successfully: \(EventType.screenView.rawValue)" : "Failed to log event: \(EventType.screenView.rawValue)")
        }
    }
}





/*
public class HSPAnalytic {
    
    private var config: AnalyticConfig?
    
    public static let shared = HSPAnalytic()
    
    private var apiClient: APIClient?
    
    private init() { }
    
    private var headers: [String: String]? {
        guard let orgToken = config?.orgToken else { return nil }
        return ["orgToken": orgToken]
    }
    
    public func startAyalytic(config: AnalyticConfig) {
        self.config = config
        setupClient()
    }
    
    private func setupClient() {
        guard let config = self.config else { return }
        self.apiClient = APIClient(baseURL: config.api)
    }
    
    // Generic event logging function
    public func logEvent(eventType: EventType, eventData: [String: Any]) {
        let event = EventRequest(eventType: eventType, eventData: eventData)
        apiClient?.sendEvent(event: event, headers: headers ?? [:]) { success in
            if success {
                print("Event logged successfully: \(eventType.rawValue)")
            } else {
                print("Failed to log event: \(eventType.rawValue)")
            }
        }
    }
    
    // App Launch Event
    public func logAppLaunch(sessionId: String, appVersion: String, deviceType: String, userId: String, referrer: String?) {
        let data: [String: Any] = [
            "sessionId": sessionId,
            "appVersion": appVersion,
            "deviceType": deviceType,
            "userId": userId,
            "referrer": referrer ?? "Unknown"
        ]
        logEvent(eventType: .appLaunch, eventData: data)
    }
    
    // Screen View Event
    public func logScreenView(screenName: String, entryPoint: String?, exitPoint: String?, timeSpent: Int, userId: String) {
        let data: [String: Any] = [
            "screenName": screenName,
            "entryPoint": entryPoint ?? "Unknown",
            "exitPoint": exitPoint ?? "Unknown",
            "timeSpent": timeSpent,
            "userId": userId
        ]
        logEvent(eventType: .screenView, eventData: data)
    }
    
    // Feature Interaction Event
    public  func logFeatureInteraction(featureName: String, interactionType: String, userId: String) {
        let data: [String: Any] = [
            "featureName": featureName,
            "interactionType": interactionType,
            "userId": userId
        ]
        logEvent(eventType: .featureInteraction, eventData: data)
    }
    
    // Purchase Event
    public func logPurchase(transactionId: String, itemId: String, itemName: String, price: Double, currency: String, userId: String) {
        let data: [String: Any] = [
            "transactionId": transactionId,
            "itemId": itemId,
            "itemName": itemName,
            "price": price,
            "currency": currency,
            "userId": userId
        ]
        logEvent(eventType: .purchase, eventData: data)
    }
    
    // Subscription Event
    public func logSubscription(subscriptionId: String, userId: String, subscriptionPlan: String, eventType: String, startDate: String, endDate: String, amount: Double, currency: String) {
        let data: [String: Any] = [
            "subscriptionId": subscriptionId,
            "userId": userId,
            "subscriptionPlan": subscriptionPlan,
            "eventType": eventType,
            "startDate": startDate,
            "endDate": endDate,
            "amount": amount,
            "currency": currency
        ]
        logEvent(eventType: .subscription, eventData: data)
    }
    
    // Trial Event
    public func logTrialStarted(trialId: String, userId: String, trialPlan: String, startDate: String, endDate: String, convertedToPaid: Bool) {
        let data: [String: Any] = [
            "trialId": trialId,
            "userId": userId,
            "trialPlan": trialPlan,
            "startDate": startDate,
            "endDate": endDate,
            "convertedToPaid": convertedToPaid
        ]
        logEvent(eventType: .trial, eventData: data)
    }
    
    // Unsubscribe Event
    public func logUnsubscribe(subscriptionId: String, userId: String, cancellationDate: String, reason: String, refundProcessed: Bool) {
        let data: [String: Any] = [
            "subscriptionId": subscriptionId,
            "userId": userId,
            "cancellationDate": cancellationDate,
            "reason": reason,
            "refundProcessed": refundProcessed
        ]
        logEvent(eventType: .unsubscribe, eventData: data)
    }
    
    // Feedback Event
    public func logFeedback(userId: String, feedbackType: String, comment: String) {
        let data: [String: Any] = [
            "userId": userId,
            "feedbackType": feedbackType,
            "comment": comment
        ]
        logEvent(eventType: .feedback, eventData: data)
    }
    
    // Notification Interaction Event
    public func logNotificationInteraction(notificationId: String, action: String, userId: String) {
        let data: [String: Any] = [
            "notificationId": notificationId,
            "action": action,
            "userId": userId
        ]
        logEvent(eventType: .notificationInteraction, eventData: data)
    }
}
*/

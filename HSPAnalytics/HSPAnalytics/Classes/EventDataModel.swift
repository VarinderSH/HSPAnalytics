//
//  EventDataModel.swift
//  HSPAnalytics
//
//  Created by Admin on 2/4/25.
//

import Foundation

public struct EventDataModel: Codable {
    let sessionId: String?
    let appVersion: String?
    let deviceType: String?
    let userId: String?
    let referrer: String?
    let trialId: String?
    let trialPlan: String?
    let startDate: String?
    let endDate: String?
    let convertedToPaid: Bool?
    let transactionId: String?
    let itemId: String?
    let itemName: String?
    let price: Double?
    let currency: String?
    let screenName: String?
    let entryPoint: String?
    let exitPoint: String?
    let timeSpent: Int?
    let featureName: String?
    let interactionType: String?
    let subscriptionId: String?
    let subscriptionPlan: String?
    let eventType: String?
    let amount: Double?
    let cancellationDate: String?
    let reason: String?
    let refundProcessed: Bool?
    let feedbackType: String?
    let comment: String?
    let notificationId: String?
    let action: String?

    public init(
        sessionId: String? = nil,
        appVersion: String? = nil,
        deviceType: String? = nil,
        userId: String? = nil,
        referrer: String? = nil,
        trialId: String? = nil,
        trialPlan: String? = nil,
        startDate: String? = nil,
        endDate: String? = nil,
        convertedToPaid: Bool? = nil,
        transactionId: String? = nil,
        itemId: String? = nil,
        itemName: String? = nil,
        price: Double? = nil,
        currency: String? = nil,
        screenName: String? = nil,
        entryPoint: String? = nil,
        exitPoint: String? = nil,
        timeSpent: Int? = nil,
        featureName: String? = nil,
        interactionType: String? = nil,
        subscriptionId: String? = nil,
        subscriptionPlan: String? = nil,
        eventType: String? = nil,
        amount: Double? = nil,
        cancellationDate: String? = nil,
        reason: String? = nil,
        refundProcessed: Bool? = nil,
        feedbackType: String? = nil,
        comment: String? = nil,
        notificationId: String? = nil,
        action: String? = nil
    ) {
        self.sessionId = sessionId
        self.appVersion = appVersion
        self.deviceType = deviceType
        self.userId = userId
        self.referrer = referrer
        self.trialId = trialId
        self.trialPlan = trialPlan
        self.startDate = startDate
        self.endDate = endDate
        self.convertedToPaid = convertedToPaid
        self.transactionId = transactionId
        self.itemId = itemId
        self.itemName = itemName
        self.price = price
        self.currency = currency
        self.screenName = screenName
        self.entryPoint = entryPoint
        self.exitPoint = exitPoint
        self.timeSpent = timeSpent
        self.featureName = featureName
        self.interactionType = interactionType
        self.subscriptionId = subscriptionId
        self.subscriptionPlan = subscriptionPlan
        self.eventType = eventType
        self.amount = amount
        self.cancellationDate = cancellationDate
        self.reason = reason
        self.refundProcessed = refundProcessed
        self.feedbackType = feedbackType
        self.comment = comment
        self.notificationId = notificationId
        self.action = action
    }
}

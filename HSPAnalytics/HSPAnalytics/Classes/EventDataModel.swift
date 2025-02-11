//
//  EventDataModel.swift
//  HSPAnalytics
//
//  Created by Admin on 2/4/25.
//

import Foundation

public struct EventDataModel: Codable {
    var sessionId: String?
    var appVersion: String?
    var deviceType: String?
    var userId: String?
    var referrer: String?
    var trialId: String?
    var trialPlan: String?
    var startDate: String?
    var endDate: String?
    var convertedToPaid: Bool?
    var transactionId: String?
    var itemId: String?
    var itemName: String?
    var price: Double?
    var currency: String?
    var screenName: String?
    var entryPoint: String?
    var exitPoint: String?
    var timeSpent: Int?
    var featureName: String?
    var interactionType: String?
    var subscriptionId: String?
    var subscriptionPlan: String?
    var eventType: String?
    var amount: Double?
    var cancellationDate: String?
    var reason: String?
    var refundProcessed: Bool?
    var feedbackType: String?
    var comment: String?
    var notificationId: String?
    var action: String?
    var orgId: String?
    var country: String?
    var misc: String?
    var appId: String?
    var latitude: String?
    var longitude: String?
    var cameraModel: String?
    var dateTimeOriginal: String?
    
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
        action: String? = nil,
        orgId: String? = nil,
        country: String? = nil,
        misc: String? = nil,
        appId: String? = nil,
        latitude: String? = nil,
        longitude: String? = nil,
        cameraModel: String? = nil,
        dateTimeOriginal: String? = nil
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
        self.orgId = orgId
        self.country = country
        self.misc = misc
        self.appId = appId
        self.latitude = latitude
        self.longitude = longitude
        self.cameraModel = cameraModel
        self.dateTimeOriginal = dateTimeOriginal
    }
}

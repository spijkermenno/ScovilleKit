//
//  DevicePayload.swift
//  ScovilleKit
//
//  Created by Pepper Technologies
//

import Foundation

/// Payload for `/v2/devices/register`
struct DevicePayload: Codable, Sendable {
    let uuid: String
    let token: String?   // ✅ Optional to support devices without APNs token
    let platform: String
    let version: String
    let build: String
    let bundle_id: String
    let production: Bool
    let notificationsEnabled: Bool
}

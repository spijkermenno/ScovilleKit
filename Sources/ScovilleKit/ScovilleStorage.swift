//
//  ScovilleStorage.swift
//  ScovilleKit
//
//  Created by Pepper Technologies
//

import Foundation

/// Handles persistent storage for UUID and cached configuration.
final class ScovilleStorage {
    private let defaults = UserDefaults.standard
    private let key = "scoville_device_uuid"

    /// Ensures a persistent per-app UUID exists.
    /// If not, creates and stores one.
    func ensureUUID() -> String {
        if let existing = defaults.string(forKey: key) {
            return existing
        }
        print("[Scoville] No UUID found.. creating new UUID and saving for later usage.")
        let new = UUID().uuidString
        defaults.set(new, forKey: key)
        return new
    }
}

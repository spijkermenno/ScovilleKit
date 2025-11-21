#if canImport(UIKit)
import UIKit

public extension Scoville {

    // MARK: - Scoville Notification Tracking
    private func trackNotificationOpened(from response: UNNotificationResponse) {
        let userInfo = response.notification.request.content.userInfo

        if let notificationId = userInfo["notification_id"] as? String {
            Task { @MainActor in
                Scoville.track("notification_opened", parameters: ["notification_id": notificationId])
            }
        } else {
            print("[Scoville] ❗️ notification_id missing in payload")
        }
    }
}
#endif

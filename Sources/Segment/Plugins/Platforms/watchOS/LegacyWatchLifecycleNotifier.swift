//
//  LegacyWatchLifecycleNotifier.swift
//  Segment
//
//  Created by Daniel Hertz on 9/23/21.
//

import Foundation

@available(watchOS, deprecated: 7.0, message: "System lifecycle notifications were adedd to watchOS 7.0")
public struct LegacyWatchLifecycleNotifier {

    private let notificationCenter: NotificationCenter

    public init(notificationCenter: NotificationCenter = .default) {
        self.notificationCenter = notificationCenter
    }

    public func applicationDidFinishLaunchingNotification() {
        notificationCenter.post(.init(name: Self.applicationDidFinishLaunchingNotification))
    }

    public func applicationDidBecomeActiveNotification() {
        notificationCenter.post(.init(name: Self.applicationDidBecomeActiveNotification))
    }

    public func applicationWillResignActiveNotification() {
        notificationCenter.post(.init(name: Self.applicationWillResignActiveNotification))
    }

    public func applicationWillEnterForegroundNotification() {
        notificationCenter.post(.init(name: Self.applicationWillEnterForegroundNotification))
    }

    public func applicationDidEnterBackgroundNotification() {
        notificationCenter.post(.init(name: Self.applicationDidEnterBackgroundNotification))
    }

}

extension LegacyWatchLifecycleNotifier {
    static let applicationDidFinishLaunchingNotification = NSNotification.Name("com.segment.applicationDidFinishLaunchingNotification")
    static let applicationDidBecomeActiveNotification = NSNotification.Name("com.segment.applicationDidBecomeActiveNotification")
    static let applicationWillResignActiveNotification = NSNotification.Name("com.segment.applicationWillResignActiveNotification")
    static let applicationWillEnterForegroundNotification = NSNotification.Name("com.segment.applicationWillEnterForegroundNotification")
    static let applicationDidEnterBackgroundNotification = NSNotification.Name("com.segment.applicationDidEnterBackgroundNotification")
}

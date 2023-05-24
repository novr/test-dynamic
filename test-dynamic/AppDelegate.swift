//
//  AppDelegate.swift
//  test-dynamic
//
//  Created by 古宮 伸久 on 2023/05/24.
//

import UIKit
import FirebaseCore
import FirebaseDynamicLinks

// MARK: - AppDelegate

final class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        FirebaseApp.configure()
        DynamicLinks.performDiagnostics()
        return true
    }
}

// MARK: Deferred Deep Link

extension AppDelegate {
    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any]
    ) -> Bool {
        application(
            app,
            open: url,
            sourceApplication: options[.sourceApplication] as? String,
            annotation: ""
        )
    }

    func application(
        _ application: UIApplication,
        open url: URL,
        sourceApplication: String?,
        annotation: Any
    ) -> Bool {
        true
    }
}

//
//  test_dynamicApp.swift
//  test-dynamic
//
//  Created by 古宮 伸久 on 2023/05/24.
//

import SwiftUI

@main
struct TestDynamicApp: App {
    @UIApplicationDelegateAdaptor var appDelegate: AppDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

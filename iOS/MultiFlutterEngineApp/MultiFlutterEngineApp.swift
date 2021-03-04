//
//  MultiFlutterEngineApp.swift
//  MultiFlutterEngineApp
//
//  Created by Tatsuya Tanaka on 2021/03/04.
//

import SwiftUI
import UIKit
import Flutter
import FlutterPluginRegistrant

let engines = FlutterEngineGroup(name: "multi-engines", project: nil)

@main
struct MultiFlutterEngineAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: FlutterAppDelegate {
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Used to connect plugins (only if you have plugins with iOS platform code).
//        GeneratedPluginRegistrant.register(with: flutterEngine);
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }
}

//
//  ContentView.swift
//  DemoApp
//

import Foundation

@MainActor
class ViewModel: ObservableObject {
    func onAppear() {
        print(AnalyticsEvents.LoginScreen.loginScreenOpened(googleAuthIsEnabled: true))
    }
}

// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// swiftlint:disable identifier_name line_length number_separator type_body_length
internal enum GeneratedAnalyticsEvents {
  internal enum LoginScreen {
    /// A login screen has been opened
    /// - Parameters:
    ///     - google_auth_is_enabled: A flag that indicates it is possible to login with Google
    internal func loginScreenOpened(
      googleAuthIsEnabled: Bool
    ) -> AnalyticsEvent {
      AnalyticsEvent(
        name: "Login Screen Opened",
        parameters: [ 
          "google_auth_is_enabled": googleAuthIsEnabled
        ]
      )
    }
    /// A login screen has been rotated
    internal func loginScreenRotated() -> AnalyticsEvent {
      AnalyticsEvent(
        name: "Login Screen Rotated",
        parameters: [:]
      )
    }
  }
  internal enum SignUpScreen {
    /// A new account has been created
    /// - Parameters:
    ///     - email: The email address used to create the account
    ///     - phone_number: The phone number used to create the account
    internal func accountCreated(
      email: String,
      phoneNumber: String
    ) -> AnalyticsEvent {
      AnalyticsEvent(
        name: "Account Created",
        parameters: [ 
          "email": email,
          "phone_number": phoneNumber
        ]
      )
    }
  }
  internal enum RequestRideScreen {
    /// A ride has been requested by the user
    /// - Parameters:
    ///     - pickup_location: The pickup location entered by the user
    ///     - destination: The destination entered by the user
    internal func rideRequested(
      pickupLocation: String,
      destination: String
    ) -> AnalyticsEvent {
      AnalyticsEvent(
        name: "Ride Requested",
        parameters: [ 
          "pickup_location": pickupLocation,
          "destination": destination
        ]
      )
    }
  }
}
// swiftlint:enable identifier_name line_length number_separator type_body_length

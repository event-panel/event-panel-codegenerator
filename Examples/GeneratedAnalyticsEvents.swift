enum GeneratedAnalyticsEvent {
    enum LoginScreen {
        /// A login screen has been opened
        /// - Parameters:
        ///     - googleAuthIsEnabled: Indicates it is possible to login with Google
        func loginScreenOpened(
            googleAuthIsEnabled: Bool
        ) -> AnalyticsEvent {
            AnalyticsEvent(
                name: "Login Screen Opened",
                parameters: [
                    "google_auth_is_enabled": googleAuthIsEnabled
                ]
            )
        }
    }

    enum SignUpScreen {
        /// A new account has been created
        /// - Parameters:
        ///     - email: The email address used to create the account
        ///     - phoneNumber: The phone number used to create the account
        func accountCreated(
            email: String,
            phoneNumber: String?
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
}
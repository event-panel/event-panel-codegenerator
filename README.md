# Event Panel: Code generator

The event generator uses [SwiftGen](https://github.com/SwiftGen/) and a custom template to generate a Swift code with a list of events based on a workspace scheme of your event panel. 

## Template

SwiftGen allows you to use a custom template to generate code based on a JSON file. A custom template [event-panel-template.stencil](https://github.com/event-panel/event-panel-codegenerator/blob/main/Swiftgen/event-panel-template.stencil) adapts the output of SwiftGen to generate a type-save list of analytics events.

## Swiftgen.yml
The swiftgen.yml file has been updated to include three optional parameters:
- `enumName` sets the name of the wrapper type for categories and events in the output file.
- `eventClassName` sets the name of the type that represents an event.
- `documentation` enables the use of Swift documentation for event definitions based on event and parameter descriptions.

```yaml
json:
  inputs: WorkspaceScheme.json
  outputs:
    templatePath: event-panel-template.stencil
    output: GeneratedAnalyticsEvents.swift
    params:
      enumName: GeneratedAnalyticsEvents
      eventClassName: AnalyticsEvent
      documentation: true
```

## Example of Output Code

When the generator is run with a JSON scheme, it will output a Swift file with a function for each event in the scheme. Here is an example of what the output code might look like:

```swift
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
  }
}
```

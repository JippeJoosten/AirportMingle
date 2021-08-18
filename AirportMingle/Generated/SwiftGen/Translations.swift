// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {

  internal enum Map {
    /// World map
    internal static let navigationTitle = L10n.tr("Translations", "map.navigationTitle")
  }

  internal enum Reach {
    /// Reach
    internal static let navigationTitle = L10n.tr("Translations", "reach.navigationTitle")
  }

  internal enum Settings {
    /// Distance units
    internal static let distanceUnits = L10n.tr("Translations", "settings.distanceUnits")
    /// Settings
    internal static let navigationTitle = L10n.tr("Translations", "settings.navigationTitle")
    internal enum DistanceUnits {
      /// Automatic
      internal static let automatic = L10n.tr("Translations", "settings.distanceUnits.automatic")
      /// Kilometers
      internal static let kilometers = L10n.tr("Translations", "settings.distanceUnits.kilometers")
      /// Miles
      internal static let miles = L10n.tr("Translations", "settings.distanceUnits.miles")
    }
  }

  internal enum Tabbar {
    /// Map
    internal static let mapTitle = L10n.tr("Translations", "tabbar.mapTitle")
    /// Reach
    internal static let reachTitle = L10n.tr("Translations", "tabbar.reachTitle")
    /// Settings
    internal static let settingsTitle = L10n.tr("Translations", "tabbar.settingsTitle")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type

// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {

  internal enum Airport {
    /// Airport
    internal static let navigationTitle = L10n.tr("Translations", "airport.navigationTitle")
    internal enum NearestAirport {
      /// Distance
      internal static let distance = L10n.tr("Translations", "airport.NearestAirport.distance")
      /// Name
      internal static let name = L10n.tr("Translations", "airport.NearestAirport.name")
      /// Nearest airport
      internal static let title = L10n.tr("Translations", "airport.NearestAirport.title")
    }
    internal enum Details {
      /// Id
      internal static let id = L10n.tr("Translations", "airport.details.id")
      /// Latitude
      internal static let latitude = L10n.tr("Translations", "airport.details.latitude")
      /// Longitude
      internal static let longitude = L10n.tr("Translations", "airport.details.longitude")
      /// Details
      internal static let title = L10n.tr("Translations", "airport.details.title")
    }
    internal enum Location {
      /// City
      internal static let city = L10n.tr("Translations", "airport.location.city")
      /// Country id
      internal static let countryId = L10n.tr("Translations", "airport.location.countryId")
      /// Name
      internal static let name = L10n.tr("Translations", "airport.location.name")
      /// Location
      internal static let title = L10n.tr("Translations", "airport.location.title")
    }
  }

  internal enum Connections {
    /// Connections
    internal static let navigationTitle = L10n.tr("Translations", "connections.navigationTitle")
  }

  internal enum Error {
    /// Something went wrong
    internal static let somethingWentWrong = L10n.tr("Translations", "error.somethingWentWrong")
  }

  internal enum General {
    /// Retry
    internal static let retry = L10n.tr("Translations", "general.retry")
  }

  internal enum Map {
    /// World map
    internal static let navigationTitle = L10n.tr("Translations", "map.navigationTitle")
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
    /// Connetions
    internal static let connectionsTitle = L10n.tr("Translations", "tabbar.connectionsTitle")
    /// Map
    internal static let mapTitle = L10n.tr("Translations", "tabbar.mapTitle")
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

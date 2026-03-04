import ArgumentParser
import EventKit

public enum Recurrence: String, ExpressibleByArgument, CaseIterable {
    case daily
    case weekly
    case monthly
    case yearly

    var frequency: EKRecurrenceFrequency {
        switch self {
            case .daily: return .daily
            case .weekly: return .weekly
            case .monthly: return .monthly
            case .yearly: return .yearly
        }
    }
}

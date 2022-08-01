import Foundation

//TODO: bulletproof
public func parseContactIdentifierStringToURLSafeString(string: String) -> String {
    let regex = try! NSRegularExpression(pattern: "[^-0123456789ABCDEF]")
    return regex.stringByReplacingMatches(
        in: string.trimmingCharacters(in: .whitespacesAndNewlines),
        options: [],
        range: NSRange(0..<string.utf16.count),
        withTemplate: ""
    )
}
//TODO: bulletproof
public func parseStringToURLSafeString(string: String) -> String {
    return string.trimmingCharacters(in: .whitespacesAndNewlines)
}

//TODO: bulletproof
public func parsePhoneNumberStringToURLSafeString(string: String) -> String {
    let regex = try! NSRegularExpression(pattern: "[^[:digit:]]")
    return regex.stringByReplacingMatches(
        in: string.trimmingCharacters(in: .whitespacesAndNewlines),
        options: [],
        range: NSRange(0..<string.utf16.count),
        withTemplate: ""
    )
}

//TODO: bulletproof
public func parseEmailAddressStringToURLSafeString(string: String) -> String {
    let regex = try! NSRegularExpression(pattern: "[^[:space:]]")
    return regex.stringByReplacingMatches(
        in: string.trimmingCharacters(in: .whitespacesAndNewlines),
        options: [],
        range: NSRange(0..<string.utf16.count),
        withTemplate: ""
    )
}

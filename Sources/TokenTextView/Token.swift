import Foundation

public struct TemplateToken: Codable {
    public let name: String { get }
    public let identifier: String { get }

    public init(name: String, identifier: String) {
        self.name = name
        self.identifier = identifier
    }
}

class TokenInstance: NSCopying, Codable {
    let token: TemplateToken
    var range: NSRange

    init(token: TemplateToken, range: NSRange) {
        self.token = token
        self.range = range
    }

    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = TokenInstance(token: self.token, range: self.range)
        return copy
    }
}

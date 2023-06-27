import Foundation

public struct TemplateToken: Codable, Hashable {
    public var name: String
    public var identifier: String

    public init(name: String, identifier: String) {
        self.name = name
        self.identifier = identifier
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(identifier)
    }
}

public class TokenInstance: NSCopying, Codable, Hashable {
    public let token: TemplateToken
    public var range: NSRange

    init(token: TemplateToken, range: NSRange) {
        self.token = token
        self.range = range
    }

    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = TokenInstance(token: self.token, range: self.range)
        return copy
    }
    
    public static func == (lhs: TokenInstance, rhs: TokenInstance) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(token)
        hasher.combine(range)
    }
}

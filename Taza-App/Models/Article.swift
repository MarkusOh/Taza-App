import Foundation
import SwiftData

@Model
class Article {
    var title: String
    var content: String
    var author: String
    var publishedDate: Date
    var sourceURL: URL
    var addedDate: Date
    
    @Relationship(deleteRule: .cascade) var results = [TypingResult]()
    
    init(title: String = "",
         content: String = "",
         author: String = "",
         publishedDate: Date = .now,
         sourceURL: URL = URL(string: "https://www.apple.com")!,
         addedDate: Date = .now) {
        self.title = title
        self.content = content
        self.author = author
        self.publishedDate = publishedDate
        self.sourceURL = sourceURL
        self.addedDate = addedDate
    }
}

import Foundation
import SwiftData

@Model
class TypingResult {
    var totalKeysPressed: Int
    var correctKeysPressed: Int
    var elapsedTime: TimeInterval
    var wpm: Double
    var accuracy: Double
    var awpm: Double
    
    init(totalKeysPressed: Int, 
         correctKeysPressed: Int,
         elapsedTime: TimeInterval,
         wpm: Double,
         accuracy: Double,
         awpm: Double) {
        self.totalKeysPressed = totalKeysPressed
        self.correctKeysPressed = correctKeysPressed
        self.elapsedTime = elapsedTime
        self.wpm = wpm
        self.accuracy = accuracy
        self.awpm = awpm
    }
}

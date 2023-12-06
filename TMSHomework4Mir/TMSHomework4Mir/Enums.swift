import Foundation

extension ViewController {
    //MARK: -  Enum Clothes
    enum Clothes {
        enum Jersey {
            case longJersey
            case shortJersey
            case redJersey
            case blueJersey
        }
        
        enum Sweater {
            case longSweater
            case shortSweater
            case knittedSweater
            case sewnSweater
        }
        
        case jerseyUser(clothesType: Jersey)
        case sweaterUser(clothesType: Sweater)
        
        func getClothesType() -> String {
            switch self {
            case let .jerseyUser(clothesType):
                return "The users clothes is \(clothesType)"
            case let .sweaterUser(clothesType):
                return "The users clothes is \(clothesType)"
            }
        }
    }
    
    //MARK: - Enum Book
    enum Book {
        case name
        case genre
        case athour
        case numberOfPages
        
        mutating func bookDescription() {
            switch self {
            case .name:
                print("Harry Potter and the Philosopher's Stone")
            case .genre:
                print("Fantasy,Adventure")
            case .athour:
                print("J. K. Rowling")
            case .numberOfPages:
                print("367")
            }
        }
    }

}

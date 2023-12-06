import UIKit

class ViewController: UIViewController {
    
    var nameOfTheBook = Book.name
    var genreOfTheBook = Book.genre
    var athourOfTheBook = Book.athour
    var numberOfPagesOfTheBook = Book.numberOfPages
    let optionalNumber: Int? = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - Enum Book
        nameOfTheBook.bookDescription()
        genreOfTheBook.bookDescription()
        athourOfTheBook.bookDescription()
        numberOfPagesOfTheBook.bookDescription()
        
        //MARK: -  Enum Clothes
        let clothes = Clothes.Jersey.shortJersey
        let jerseyUser = Clothes.jerseyUser(clothesType: clothes )
        print(jerseyUser.getClothesType())
        
        //MARK: - Optional number multiplied by two
        optionalTaker()
        
        //MARK: - Using the force unwrap to extract
        extractionByForceUnwrap()
        
        //MARK: - Using guard construction
        firstGuardValueUnwrap(value: 22)
        secondGuardValueUnwrap(value: 2)
        thirdGuardValueUnwrap(value: nil)
        fourthGuardValueUnwrap(value: 4)
        
        //MARK: - integer conversion
        integerConversion(value: "24")
        
    }
    
    func optionalTaker(optionalValue: Int? = 32) {
        if let optionalValue{
            print(optionalValue * 2)
        } else {
            print("Option does not contain a value")
        }
    }
    
    func extractionByForceUnwrap(optionalValue: Int? = nil) {
        if optionalValue != nil {
            print(optionalValue! * 2)
        } else {
            print("Option does not contain a value")
        }
    }
    
    func firstGuardValueUnwrap(value: Int?) {
        guard let number = value else{
            print("No value")
            return
        }
        print("Value is \(number)")
    }
    
    func secondGuardValueUnwrap(value: Int?) {
        guard let number = value else{
            print("No value")
            return
        }
        print(number * 4)
    }
    
    func thirdGuardValueUnwrap(value: Int?) {
        guard let number = value else{
            print("No value")
            return
        }
    }
    
    func fourthGuardValueUnwrap(value: Int?) {
        guard let number = value else{
            print("No value")
            return
        }
        print(pow(Decimal(number), 2))
    }
    
    func integerConversion(value: String) {
        guard let number = Int(value) else {
            print("Сonversion is impossible")
            return
        }
        print(number)
    }
}

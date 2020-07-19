func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
        case 81... :
            print("You love each other like Kanye loves Kanye")
        case 40 ..< 81:
            print("You go together like Coke and Mentos")
        default:
            print("You'll be forever alone")
    }
    
    
//    if loveScore > 80 {
//        print("You love each other like Kanye loves Kanye")
//    } else if loveScore > 40 {
//        print("You go together like Coke and Mentos")
//    } else {
//        print("You'll be forever alone")
//    }
}

loveCalculator()

func isLeap(year: Int) {
    var leap = "NO"

    if year % 4 == 0 {
        leap = "YES"
    }
    
    if year % 100 == 0 {
        leap = "NO"
    }
    
    if year % 400 == 0 {
        leap = "YES"
    }
  
    print(leap)
}


//for aYear in 0...2020 {
var aYear = 2020
isLeap(year: aYear)
//}



var aNumber = 2

func dayOfTheWeek(day: Int) {
    switch day {
        case 1:
            print("Monday")
        case 2:
            print("Tuesday")
        case 3:
            print("Wednesday")
        case 4:
            print("Thursday")
        case 5:
            print("Friday")
        case 6:
            print("Saturday")
        case 7:
            print("Sunday")
        default:
            print("Error") // There is an error! The number provided does not correspond to any day of the week! Please try again!
    }
}

dayOfTheWeek(day: aNumber)

let eggTimes = [
    "Soft": 5,
    "Medium": 7,
    "Hard": 12
]

let hardness = "Soft"

print(eggTimes[hardness]!)

var phoneBook : [String: Int] = [
    "Artem": 123456789,
    "Metra": 987654321
]

print(phoneBook)





var playerOneUserName: String? = nil

playerOneUserName = "artemtkachuk"

var unwrappedPlayerOneUsername = playerOneUserName!

playerOneUserName = nil

if playerOneUserName != nil {
    print(playerOneUserName!)
}

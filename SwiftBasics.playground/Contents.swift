import UIKit

//basic print

//var greeting = "Hello, playground"
//print(greeting)
//date print
//var dated:Date=Date()
//print(dated)
//
// print Integer
//let num:Int=90
//print(num)
//
// print double integer
//let doub:Double=90
//print(doub)
//
// print bool integer
//let bool:Bool=false
//print(bool)


//if - else statement

//var userIsPremium=true
//if userIsPremium == true {
//    print("user is premium activated 0")
//}else{
//    print("user is not premium activated 0")
//}
//
//if userIsPremium {
//    print("user is premium activated 1")
//}
//
//if userIsPremium == false {
//    print("user is not premium activated 0")
//}
//
//if !userIsPremium {
//    print("user is not premium activated 1")
//}

//Arithmetic Operators *,-,/

//var doubleNum: Double = 9
//doubleNum = doubleNum+2
//doubleNum += 2
//print(doubleNum)
//
//doubleNum = doubleNum - 2
//doubleNum -= 2
//print(doubleNum)
//
//doubleNum = doubleNum * 2
//doubleNum *= 2
//print(doubleNum)
//
//doubleNum = doubleNum / 2
//doubleNum /= 2
//print(doubleNum)

//conditional operators

let userIsPremium = false
//let userIsNew = false
//
//if userIsPremium && !userIsNew {
//    print("You can enjoy limited offers")
//} else {
//    print("You can enjoy unlimited offers")
//}

let persons = 3
let seats = 2

//if (persons==3)&&(seats==3){
//    print("Seats are enough")
//}
//else{
//    print("Seats are less")
//}
//
//
//if (persons>=3)&&(seats<=3){
//    print("Seats are enough")
//}
//else{
//    print("Seats are less")
//}
//
//if persons>3||seats<3{
//    print("Seats are enough")
//}
//else{
//    print("Seats are less")
//}


//if persons>3 && (userIsNew || userIsPremium) {
//    print("You can enjoy limited offers")
//}
//else if (persons>3 && userIsNew) || userIsPremium {
//    print("You can enjoy unlimited offers")
//}
//else{
//    print("No availabaility")
//}


//functions

//func meFirstFunc(){
//    print("My first function on swift")
//}
//meFirstFunc()


//func checkAuth(){
//    let auth = true
//    let isUser = false
//    let result = showScreen(auth:auth, isUser:isUser)
//    print(result)
//}
//
//func showScreen(auth:Bool,isUser:Bool)->String {
//    if auth && isUser {
//        return "Show HomeScreen"
//    }
//    else {
//        return "not Authenticated"
//    }
//}
//
//checkAuth()

// use of guard

//func guardCheck()->String{
//    let title="Auth"
//    
//    guard title == "Auth" else{
//        return "not auth"
//    }
//    
//    return "auth"
//            
//}
//
//let guardd = guardCheck()
//
//print(guardd)

//use of one function with or without arguments

//let num1 = 2
//let num2 = 4
//func sum()->Int{
//    return num1+num2
//}
//
//func sum(val1:Int,val2:Int)->Int{
//    return val1+val2
//}
//
//
//let res1 = sum()
//let res2 = sum(val1:num1,val2:num2)
//
//var sum1: Int {
//    return num1+num2+num1
//}
//
//print(res1,res2,sum1)

//let name="hassam"
//print("name \(name)")
//
//let data:Bool? = nil
//
//print(data ?? "hassam")
//
//
//let userIsVerified:Bool? = nil
//
//func checkUserIsVerified() -> Bool? {
//    return userIsVerified
//}
//
//func checkUserIsVerified2() -> Bool {
//    return userIsVerified ?? false
//}
//
//let result = checkUserIsVerified()
//let result1 = checkUserIsVerified2()
//print(result ?? "hassam")
//print(result1)

//Optional data with let

//var userIsPremium: Bool? = nil
//
//func checkIfUser ()-> Bool?{
//    if let newUser = userIsPremium {
//        return newUser
//    }
//    return false
//}
//


let userIsNew:Bool? = true
let userDidCompleteOnboarding:Bool? = true
let userFavMovie : String? = nil

 func checkIfUserExist() -> Bool {
    guard let userIsNew, let userDidCompleteOnboarding, let userFavMovie else{
        return false
    }
     return true
}

var result = checkIfUserExist()

print(result)


func getUserName()->String{
    return "test"
}

func getTitle()->String{
    return "title"
}

func fetUserName(){
    let userName: String? = getUserName()
    
    let count: Int? = userName?.count
    let title :String = getTitle()
    
    let titleCount: Int? = title.count
    
    let firstCharIsLowCase = (userName?.first?.isLowercase) ?? false
    let count2: Int = userName!.count
}


let

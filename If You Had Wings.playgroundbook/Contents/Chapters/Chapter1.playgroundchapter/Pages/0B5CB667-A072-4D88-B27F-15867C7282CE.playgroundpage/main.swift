/*:
 
 # But... 😢
 
 The average temperature on Earth is **rising!**\
 So the animals we just met have been affected a lot.\
 This is because of **Global Warming**.\
 Global warming is the gradual heating of Earth's surface, oceans and atmosphere.
 
 Let's call animal again to ask what's happened.
 
 ---
 
 # 🏁 Mission: Call animal again
 ### 🗝 Use String array
 Array is an ordered, random-access collection.\
 There is an array of animal names here:
 
 `let animals = ["pusa", "killerWhale", "polarBear", "arcticFox", "arcticHare", "reindeer", "weddellSeal", "krillShrimp", "penguin"]`
 
 📜 **Write a number for using `animals` array**
 
 > You can get a String with index of an array.\
 The index starts with 0.\
 If you use `animals` array like `animals[2]`, it is `"polarBear"`.\
 You have to input the Integer not more than 8. **( 0 ~ 8 )**
 ```
 view.callAnimal(animalName: animals[1])
 ```
 and press `Run My Code` button of the bottom right corner.\
 **And Click the animal to figure out what is happened.**
 
 ✅ If you are done, you can go to the [next page](@next).
 
*/

//#-hidden-code
import PlaygroundSupport
import SwiftUI

let animals = ["pusa", "killerWhale", "polarBear", "arcticFox", "arcticHare", "reindeer", "weddellSeal", "krillShrimp", "penguin"]

var view = AfterView(name: "")
//#-end-hidden-code

view.callAnimal(animalName: animals[/*#-editable-code write number between 0 and 8*//*#-end-editable-code*/])

//#-hidden-code
let page = UIHostingController(rootView: view)

PlaygroundPage.current.liveView = page

var success = NSLocalizedString("Good! You did call animal! Now click the animal to ask. As you can see, Global warming had bad effects on animals. Try calling other animals, and if you did, let's go to the [**Next Page**](@next)", comment:"Success message")
PlaygroundPage.current.assessmentStatus = .pass(message: success)
//#-end-hidden-code

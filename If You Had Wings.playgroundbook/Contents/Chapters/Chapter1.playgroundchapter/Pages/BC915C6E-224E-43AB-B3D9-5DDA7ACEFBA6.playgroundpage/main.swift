/*:
 
 # Say hello to animals 🐻‍❄️🐧
  
 You will be arrived at WINTER LAND soon.\
 The weather is very cold there, are you dressed warmly?\
 Animals living in WINTER LAND love this cold climate.
 
 Now, shall we say hello to cute animal friends?
 
 ---
 
 # 🏁 Mission: Call animal
 ### 🗝 Pass String as an argument of the function
 You can perform a specific task with function.\
 This time, we are going to call animals with the function.\
 To call an animal, you have to give an argument(`animalName`) to the function(`callAnimal`).
 
 These are animal names you can call today.
 - pusa
 - killerWhale
 - polarBear
 - arcticFox
 - arcticHare
 - reindeer
 - weddellSeal
 - krillShrimp
 - penguin
 
 📜 **Write animal name next to the argument name of the function.**
 
> Make sure to distinguish between upper and lower case letters. \
You have to write exactly same with animal name above as `animalName` argument of `callAnimal` function.
```
 view.callAnimal(animalName: "arcticHare")
```
 and press `Run My Code` button of the bottom right corner.\
 **And Click the animal to say hello.**
 
 ✅ If you are done, you can go to the [next page](@next).

 
*/

//#-hidden-code
import PlaygroundSupport
import SwiftUI
var view = BeforeView(name: "")
//#-end-hidden-code

view.callAnimal(animalName: /*#-editable-code write down animal name here*/""/*#-end-editable-code*/)

//#-hidden-code
let page = UIHostingController(rootView: view)

PlaygroundPage.current.liveView = page

var success = NSLocalizedString("You did call animal! Now click the animal to say hello. Try calling other animals, and if you did, let's go to the [**Next Page**](@next)", comment:"Success message")
PlaygroundPage.current.assessmentStatus = .pass(message: success)

//#-end-hidden-code

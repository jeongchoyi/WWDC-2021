/*:
 
 # Hello There! 👋
 
 ### Have you ever imagined that you had wings? 🧚
 If you had wings, where would you like to travel? I'll give you wings just for today.\
Let's go to **WINTER LAND** together! In WINTER LAND, you can meet animals that live in Antarctica and the Arctic at once.
 
 ### Let's go!
 
 ---
 
 # 🏁 Mission: Get a boarding pass with your name
 ### 🗝 Create String
 You have to write down your name as `String`.
 A string is a series of characters, such as "Hello", that forms a collection.\
 You can create new strings using string literals. A string literal is a series of characters enclosed in quotes.
 
 📜 **Write down your name by yourself**.\
 Then you can get a **boarding pass** to go to WINTER LAND!
 ```
  var myName: String = "Daniel"
 ```
 and press `Run My Code` button of the bottom right corner.
 
 ✅ If you are done, you can go to the [next page](@next).
 */

//#-hidden-code
import PlaygroundSupport
import SwiftUI
//#-end-hidden-code

//#-code-completion(everything, hide)
var myName: String = /*#-editable-code write down your name here*/""/*#-end-editable-code*/

//#-hidden-code
let view = ContentView(name: myName)
let page = UIHostingController(rootView: view)

PlaygroundPage.current.liveView = page

if myName != "" {
    var success = NSLocalizedString("Congrats! Now you got a boarding pass to the WINTER LAND.  let's go to the [**WINTER LAND!**](@next)", comment:"Success message")
    PlaygroundPage.current.assessmentStatus = .pass(message: success)
} else {
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["Write down your name using keyboard!"], solution: nil)
}
//#-end-hidden-code

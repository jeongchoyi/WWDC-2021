/*:
 
 # If the temperature of the Earth continues to rise...🌏🥵
 
 Because of the rising temperature of Earth,\
 Glaciers are melting faster and faster! 🧊💦\
 What if all the remaining glaciers melt away?\
 Most of the oceans will rise about 66 meters from now. 🌊⬆️\
 If so, The statue of Liberty will be submerged to the shoulders in the sea water!

 What can we do to stop Global warming?
 
 # 🏁 Mission: Save the statue of Liberty
 ### 🗝 Create Bool
 A Bool is A value type whose instances are either `true` or `false`.\
 Create instances of Bool by using one of the Boolean literals `true` or `false`
 
 📜 **Change the Bool value for the four actions below.**\
 **and see how the sea level changes.**
 > Change the value to `true` for **the actions you will take**.\
 A photo of you doing that will appear and sea level will change.
 ```
 var rideBike: Bool = true
 ```
 and press `Run My Code` button of the bottom right corner.
 
 ✅ If you are done, you can go to the [next page](@next).
 
 */

//#-hidden-code
import PlaygroundSupport
import SwiftUI
//#-end-hidden-code

var rideBike: Bool = /*#-editable-code true or false*/false/*#-end-editable-code*/
var pullPlug: Bool = /*#-editable-code true or false*/false/*#-end-editable-code*/
var useTumbler: Bool = /*#-editable-code true or false*/false/*#-end-editable-code*/
var doRecycle: Bool = /*#-editable-code true or false*/false/*#-end-editable-code*/

//#-hidden-code
var view = StatusOfLibertyView(ride: rideBike, pull: pullPlug, use: useTumbler, recycle: doRecycle)
let page = UIHostingController(rootView: view)

PlaygroundPage.current.liveView = page

if rideBike && pullPlug && useTumbler && doRecycle {
    var success = NSLocalizedString("Awesome! You did save the status of Liberty. Now you know what you can to do stop global warming. [**Next Page**](@next)", comment:"Success message")
    PlaygroundPage.current.assessmentStatus = .pass(message: success)
} else {
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["Let's take more photo of you taking action to save the status of Liberty! Change false to true if you want to stop the global warming."], solution: nil)
}
//#-end-hidden-code

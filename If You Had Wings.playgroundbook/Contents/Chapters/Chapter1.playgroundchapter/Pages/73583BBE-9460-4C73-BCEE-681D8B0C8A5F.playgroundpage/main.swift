/*:
 
 # Good Bye!✨
 It time to go back to your home now! 🧚‍♀️
 
 ### Through this journey...
 you've learned these:
 * The animals live in Antartica and Arctic
 * How animals affected because of Global warming
 * Things you can do to stop Global warming
 
 ### And Also...
 * Creating String variable
 * Passing String as an argument of the function
 * Using String array
 * Creating Bool variable
 
 
 I hope you enjoyed this trip.\
 Good Bye! 👋
 
 
 */

//#-hidden-code
import PlaygroundSupport
import SwiftUI

public struct GoodByeView: View {
    public var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "bg05.png"))
                .resizable()
        }
    }
}

PlaygroundPage.current.setLiveView(GoodByeView())
//#-end-hidden-code


import SwiftUI
import SpriteKit
import PlaygroundSupport

public struct FairyView: UIViewRepresentable {
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    public func makeUIView(context: UIViewRepresentableContext<FairyView>) -> SKView {
        let view = SKView()
        view.allowsTransparency = true
        var scene: SKScene {
            let fairy = FairyScene()
            fairy.size = CGSize(width: 200, height: 300)
            fairy.scaleMode = .fill
            fairy.backgroundColor = .clear
            
            return fairy
        }
        view.presentScene(scene)
        return view
    }
}

public struct ContentView: View {
    
    // properties
    public var name: String
    
    // init function
    public init(name: String){
        self.name = name
    }
    
    // UI
    public var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "bg01.png"))
                .resizable()
            
            GeometryReader {geometry in 
                
                VStack(alignment: .center) { 
                    Spacer()
                        .frame(height: 50)
                    HStack { // fairy
                        Spacer()
                            .frame(width: geometry.size.width / 2)
                        FairyView()
                            .frame(width: geometry.size.width * 0.27 , height: geometry.size.height / 3)
                    }
                    Spacer()
                        .frame(height: 50)
                    
                    ZStack { // boarding pass
                        RoundedRectangle(cornerRadius: 30.0)
                            .frame(width: geometry.size.width * 0.9 , height: geometry.size.height * 0.45)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                        
                        VStack { // texts
                            HStack {
                                Spacer()
                                    .frame(width: 10)
                                Text("Boarding Pass")
                                    .foregroundColor(.black)
                                    .bold()
                                    .modifier(FittingFontSizeModifier())
                                    .frame(width: geometry.size.width * 0.5, height: 30)
                                Spacer()
                            }
                            
                            Rectangle()
                                .frame(width: geometry.size.width * 0.9 - 50, height: 3)
                                .padding()
                                .foregroundColor(.black)
                            
                            HStack {
                                Spacer()
                                    .frame(width: 60)
                                Image(systemName: "airplane")
                                    .font(.system(size: 40))
                                    .foregroundColor(.black)
                                Text(" WINTER LAND")
                                    .font(.system(size: 40))
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            
                            Spacer()
                                .frame(height: 20)
                            
                            HStack {
                                Text("PASSENGER")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                                Spacer()
                                Text("FLIGHT")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                                Spacer()
                                Text("TIME")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                            }
                            .frame(width: geometry.size.width * 0.8)
                            
                            ZStack {
                                HStack {
                                    Text("PASSENGER")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .underline(true, color: Color.black)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text("wings")
                                        .font(.title2)
                                        .fontWeight(.light)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text("12:27")
                                        .font(.title2)
                                        .fontWeight(.light)
                                        .foregroundColor(.black)
                                }
                                .frame(width: geometry.size.width * 0.8, height: 30, alignment: .center)
                                HStack {
                                    Spacer()
                                        .frame(width: 80)
                                    Text(name)
                                        .font(.title2)
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    Spacer()
                                }
                            }
                        }
                    }
                    .frame(width: geometry.size.width)
                }
            }
            
        }
    }
}

struct FittingFontSizeModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 100))
            .minimumScaleFactor(0.001)
    }
}

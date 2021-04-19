import SwiftUI
import SpriteKit
import PlaygroundSupport

public struct BeforeSceneView: UIViewRepresentable {
    
    var animalName: String = ""
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    public func makeUIView(context: UIViewRepresentableContext<BeforeSceneView>) -> SKView {
        let view = SKView()
        view.allowsTransparency = true
        var scene: SKScene {
            var animal = AnimalScene()
            animal.animalName = animalName
            
            animal.size = CGSize(width: 300, height: 300)
            animal.scaleMode = .fill
            animal.backgroundColor = .clear
            
            return animal
        }
        view.presentScene(scene)
        return view
    }
}

public struct BeforeView: View {
    
    // properties
    public var animalName: String
    @State var animalState: String = ""
    
    // init function
    public init(name: String){
        self.animalName = name
    }
    
    // set function
    public mutating func callAnimal(animalName: String) {
        self.animalName = animalName
    }
    
    // UI
    public var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "bg02.png"))
                .resizable()
            
            if animalState == animalName {
                VStack {
                    Spacer()
                        .frame(height: 50)
                    ExplanationBox(animalName: animalState)
                        .frame(height: 300)
                        .padding()
                    Spacer()
                }
            } else {
            }
            
            GeometryReader {geometry in 
                
                VStack(alignment: .center) { 
                    Spacer()
                    HStack(alignment: .center) { // fairy
                        Spacer()
                        
                        Button(action: {
                            animalState = animalName
                        }) {
                            BeforeSceneView(animalName: animalName)
                                .frame(width: geometry.size.width / 2 , height: geometry.size.height / 2)
                        }
                        Spacer()
                    }
                    Spacer()
                        .frame(height: geometry.size.height / 8)
                }
            }
        }
    }
}

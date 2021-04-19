import SwiftUI

public struct StatusOfLibertyView: View {
    
    var rideBike: Bool = false
    var pullPlug: Bool = false
    var useTumbler: Bool = false
    var doRecycle: Bool = false
    
    private var trueCount: Int = 0
    
    public init(ride: Bool, pull: Bool, use: Bool, recycle: Bool) {
        self.rideBike = ride
        self.pullPlug = pull
        self.useTumbler = use
        self.doRecycle = recycle
        
        if rideBike { trueCount += 1 }
        if pullPlug { trueCount += 1 }
        if useTumbler { trueCount += 1 }
        if doRecycle { trueCount += 1 }
        
    }
    
    public var body: some View {
        
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "bg04.png"))
                .resizable()
            
            GeometryReader {geometry in
                VStack(alignment: .center) {
                    
                    Spacer()
                        .frame(height: 20)
                    
                    ZStack {
                        
                        if doRecycle {
                            Image(uiImage: #imageLiteral(resourceName: "polaroid04.png"))
                                .resizable()
                                .frame(height: geometry.size.height / 3)
                        }
                        if useTumbler {
                            Image(uiImage: #imageLiteral(resourceName: "polaroid03.png"))
                                .resizable()
                                .frame(height: geometry.size.height / 3)
                        }
                        
                        if pullPlug {
                            Image(uiImage: #imageLiteral(resourceName: "polaroid02.png"))
                                .resizable()
                                .frame(height: geometry.size.height / 3)
                        }
                        
                        if rideBike {
                            Image(uiImage: #imageLiteral(resourceName: "polaroid01.png"))
                                .resizable()
                                .frame(height: geometry.size.height / 3)
                        }
                        
                        Image(uiImage: #imageLiteral(resourceName: "polaroid00.png"))
                            .resizable()
                            .frame(height: geometry.size.height / 3)
                    }
                    .padding(20)
                    
                    Spacer()
                    
                    switch trueCount {
                    case 0:
                        Image(uiImage: #imageLiteral(resourceName: "wave.png"))
                            .resizable()
                            .frame(height: geometry.size.height / 2)
                    case 1:
                        Image(uiImage: #imageLiteral(resourceName: "wave01.png"))
                            .resizable()
                            .frame(height: geometry.size.height / 2)
                    case 2:
                        Image(uiImage: #imageLiteral(resourceName: "wave02.png"))
                            .resizable()
                            .frame(height: geometry.size.height / 2)
                    case 3:
                        Image(uiImage: #imageLiteral(resourceName: "wave03.png"))
                            .resizable()
                            .frame(height: geometry.size.height / 2)
                    default:
                        Spacer()
                            .frame(height: geometry.size.height / 2)
                    }
                }
            }
        }
        
    }
}

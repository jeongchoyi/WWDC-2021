
import SpriteKit

public class AnimalScene: SKScene {
    
    public var animalName: String = ""
    
    public override func didMove(to view: SKView) {
        
        var animalNode = SKSpriteNode(imageNamed: animalName)
        
        animalNode.size = CGSize(width: 300, height: 300 )
        animalNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        animalNode.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        addChild(animalNode)
        
        let actionGoDown = SKAction.moveTo(y: animalNode.position.y, duration: 0.3)
        let actionGoUp = SKAction.moveTo(y: animalNode.position.y + 5, duration: 0.3)
        
        animalNode.run(SKAction.repeatForever(SKAction.sequence([actionGoDown, actionGoUp])))
        
    }
}

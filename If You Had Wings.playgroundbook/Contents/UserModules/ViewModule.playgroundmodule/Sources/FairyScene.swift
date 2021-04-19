

import SpriteKit

class FairyScene: SKScene {
    override func didMove(to view: SKView) {
        
        let fairy = SKSpriteNode(imageNamed: "fairy")
        fairy.size = CGSize(width: 200, height: 300 )
        fairy.position = CGPoint(x: size.width / 2, y: size.height / 2)
        fairy.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        addChild(fairy)
        
        let actionGoDown = SKAction.moveTo(y: fairy.position.y - 10, duration: 0.3)
        let actionGoUp = SKAction.moveTo(y: fairy.position.y + 10, duration: 0.3)
        
        fairy.run(SKAction.repeatForever(SKAction.sequence([actionGoDown, actionGoUp])))
        
    }
}


import SwiftUI

public struct AfterExplanationBox: View {
    
    public var animalName: String = ""
    
    public var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.black)
                
                //pusa, killerWhale, polarBear, arcticFox, arcticHare, reindeer, weddellSeal, krillShrimp, penguin
                
                switch animalName {
                case "pusa":
                    Text("Pusa were found in the Arctic Ocean off the southern coast of Ireland, the Irish Seals Rescue said. The rescue team explained that the seals indicated the possibility of a change in ocean currents caused by climate change. Global warming caused the Arctic ice to melt, causing changes in salinity and weight of the Arctic Ocean, which led to the change in the speed and direction of currents flowing.\n\n")
                        .padding()
                        .foregroundColor(.white)
                case "killerWhale":
                    Text("Since 2007, the Arctic has melted, extending the killer whale's radius of action to the Arctic Ocean. As a result, the Arctic whales, belugas, bowhead whales, and seals were seen flocking to the coast to escape killer whales.\n\n\n")
                        .padding()
                        .foregroundColor(.white)
                case "polarBear":
                    Text("It is a polar bear that is starving to death after searching through waste. The place where the polar bear barely took a step is a wastebasket. Polar bears barely eat black objects. Arctic temperatures have risen and glaciers have melted, leaving polar bears no room to eat their main seal. Polar bears, who were unable to hunt for food, came down to where people lived and searched trash cans for food.\n\n\n")
                        .padding()
                        .foregroundColor(.white)
                case "arcticFox":
                    Text("Even the Arctic fox, which can survive in extreme conditions of minus 50 degrees Celsius, has knelt under the power of global warming. This is because the Earth is warming due to climate change, and the tundra, the habitat of Arctic foxes, is gradually turning into forests. The Arctic fox, which has evolved for a very long time to fit life in the snow, is disappearing from its rapidly changing environment.\n\n")
                        .padding()
                        .foregroundColor(.white)
                case "arcticHare":
                    Text("Arctic hare change their entire body white with only the tip of their ears. To protect oneself from predators, the color of the fur is camouflaged according to the surrounding environment according to the season. However, recently, in some rabbits have remained brown or gray in winter. This is because global warming has reduced snowfall and eliminated the need for white color.\n\n")
                        .padding()
                        .foregroundColor(.white)
                case "reindeer":
                    Text("Adult reindeer living in the Svalbard Islands, Norway's Arctic region, have lost 12% over the past 16 years. The weight of reindeer living in the Arctic is very important for reproduction and survival. As winter warms up, it rains a lot, and as rain falls on the snow becomes ice, it covers the moss inside the snow, the winter food of reindeer. It is said that reindeer are starving, miscarrying their young, or giving birth to much lighter ones.\n\n\n")
                        .padding()
                        .foregroundColor(.white)
                case "weddellSeal":
                    Text("The seal is a top Antarctic predator and plays an important role in identifying the changes that the climate crisis will bring to the Antarctic ecosystem. They usually eat molluscs and fish such as squid, but they have difficulty finding food due to problems such as water temperature changes caused by global warming.\n\n")
                        .padding()
                        .foregroundColor(.white)
                case "krillShrimp":
                    Text("Krill's habitat has shrunk further south. The total amount of krill also decreased. This has a serious adverse effect on the ecosystem. The food web collapses, causing problems in the sustainability of the krill-eating ecosystem.\n\n")
                        .padding()
                        .foregroundColor(.white)
                case "penguin":
                    Text("With temperatures exceeding 20 degrees Celsius measured for the first time in Antarctica, the situation in the penguin habitat covered in mud, not snow, was reported. As the temperature rises, snow and ice melt into mud. Penguins in the Antarctic Adeli penguin colony are having a hard time coping with the new realities of climate chaos.\n\n")
                        .padding()
                        .foregroundColor(.white)
                default:
                    Text("Who is that? \n You called wrong animal.")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

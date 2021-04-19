
import SwiftUI

public struct ExplanationBox: View {
    
    public var animalName: String = ""
    
    public var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.white)
                
                    //pusa, killerWhale, polarBear, arcticFox, arcticHare, reindeer, weddellSeal, krillShrimp, penguin
                
                switch animalName {
                case "pusa":
                    Text("Hi Pusa!\nThe Pusa is an earless seal inhabiting the Arctic and sub-Arctic regions. The pusa is the smallest and most common seal in the Arctic, with a small head, short cat-like snout, and a plump body. Its coat is dark with silver rings on the back and sides with a silver belly.\n\n")
                        .padding()
                        .foregroundColor(.black)
                case "killerWhale":
                    Text("Hi Killer whale! \n The killer whale or orca (Orcinus orca) is a toothed whale belonging to the oceanic dolphin family, of which it is the largest member. It is recognizable by its black body with a white underside and patches near each eye. Killer whales have a diverse diet, although individual populations often specialize in particular types of prey. Some feed exclusively on fish, while others hunt marine mammals such as seals and other species of dolphin.\n\n")
                        .padding()
                        .foregroundColor(.black)
                case "polarBear":
                    Text("Hi Polar bear! \n The polar bear lives at Arctic. The entire body is covered with white-looking fur, but its nose and skin are black. The white-looking fur is actually transparent because of the reflection of light. It functions as a cover-up and blocks cold temperatures in the Arctic.\n\n")
                        .padding()
                        .foregroundColor(.black)
                case "arcticFox":
                    Text("Hello Arctic fox! \n The Arctic fox, also known as the white fox, polar fox, or snow fox, is a small fox native to the Arctic regions of the Northern Hemisphere and common throughout the Arctic tundra biome. It is well adapted to living in cold environments, and is best known for its thick, warm fur that is also used as camouflage. It has a large and very fluffy tail.\n\n")
                        .padding()
                        .foregroundColor(.black)
                case "arcticHare":
                    Text("Hi Arctic hare! \n The Arctic hare survives with shortened ears and limbs, a small nose and a thick coat of fur. It usually digs holes in the ground or under the snow to keep warm and to sleep. Arctic hares look like rabbits but have shorter ears, are taller when standing, and, unlike rabbits, can thrive in extreme cold.\n\n")
                        .padding()
                        .foregroundColor(.black)
                case "reindeer":
                    Text("Hello Reindeer! \n They mainly eat lichens in winter, they are the only large mammal able to metabolise lichen owing to specialised bacteria and protozoa in their gut. However, they also eat the leaves of willows and birches, as well as sedges and grasses.\n\n")
                        .padding()
                        .foregroundColor(.black)
                case "weddellSeal":
                    Text("Hello Weddell seal! \n The Weddell seal is a relatively large and abundant true seal  with a circumpolar distribution surrounding Antarctica. The Weddell seal was discovered and named in the 1820s during expeditions led by British sealing captain James Weddell to the area of the Southern Ocean now known as the Weddell Sea. The life history of this species is well documented since it occupies fast ice environments close to the Antarctic continent and often adjacent to Antarctic bases.\n\n")
                        .padding()
                        .foregroundColor(.black)
                case "krillShrimp":
                    Text("Hi Krill shrimp! \n Krill are small crustaceans of the order Euphausiacea, and are found in all the world's oceans. The name \"krill\" comes from the Norwegian word krill, meaning \"small fry of fish\", which is also often attributed to species of fish. Krill are considered an important trophic level connection – near the bottom of the food chain. They feed on phytoplankton and (to a lesser extent) zooplankton, yet also are the main source of food for many larger animals.\n\n")
                        .padding()
                        .foregroundColor(.black)
                case "penguin":
                    Text("Hi Penguin! \n Penguins live in the southern hemisphere, and most penguins eat krill, fish, squid, and other animals that live in the water. They spend about half their life on water and land. Because there are fewer males, several females are among the few species on Earth fighting for a male during mating season.\n\n")
                        .padding()
                        .foregroundColor(.black)
                default:
                    Text("Who is that? \n You called wrong animal.")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

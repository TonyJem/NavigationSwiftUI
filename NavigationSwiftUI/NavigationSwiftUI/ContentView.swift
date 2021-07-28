import SwiftUI

private let spaceShips: [Model] = [
    Model(name: "SpaceShip01"),
    Model(name: "SpaceShip02"),
    Model(name: "SpaceShip03"),
    Model(name: "SpaceShip04"),
    Model(name: "SpaceShip05"),
    Model(name: "SpaceShip06"),
    Model(name: "SpaceShip07"),
    Model(name: "SpaceShip08"),
    Model(name: "SpaceShip09"),
    Model(name: "SpaceShip10")
]

struct ContentView: View {
    var body: some View {
        List {
            ForEach(spaceShips) { color in
                Group {
                    Text("\(color.name)")
                }.font(.title2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

private let spaceShips: [Model] = [
    Model(name: "01 CR90 corvette"),
    Model(name: "02 Star Destroyer"),
    Model(name: "03 Death Star"),
    Model(name: "04 Millennium Falcon"),
    Model(name: "05 Y-wing"),
    Model(name: "06 X-wing"),
    Model(name: "07 TIE Advanced x1"),
    Model(name: "08 Executor"),
    Model(name: "09 Rebel transport"),
    Model(name: "10 Imperial shuttle")
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List {
                ForEach(spaceShips) { color in
                    Group {
                        Text("\(color.name)")
                    }.font(.title2)
                    .foregroundColor(.green)
                }
            }.navigationBarTitle("Starships")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

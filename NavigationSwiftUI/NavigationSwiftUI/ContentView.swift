import SwiftUI

private let starships: [Starship] = [
    Starship(name: "01 CR90 corvette", model: "CR90 corvette"),
    Starship(name: "02 Star Destroyer", model: "Imperial I-class Star Destroyer"),
    Starship(name: "03 Death Star", model: "DS-1 Orbital Battle Station"),
    Starship(name: "04 Millennium Falcon", model: "YT-1300 light freighter"),
    Starship(name: "05 Y-wing", model: "BTL Y-wing"),
    Starship(name: "06 X-wing", model: "T-65 X-wing"),
    Starship(name: "07 TIE Advanced x1", model: "Twin Ion Engine Advanced x1"),
    Starship(name: "08 Executor", model: "Executor-class star dreadnought"),
    Starship(name: "09 Rebel transport", model: "GR-75 medium transport"),
    Starship(name: "10 Imperial shuttle", model: "Lambda-class T-4a shuttle")
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(starships) { starship in
                NavigationLink(destination: DetailScreen(selectedStarship: starship)) {
                    VStack {
                        Text(starship.name)
                            .padding(.trailing)
                    }
                }
            }.navigationTitle("Starships")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DetailScreen: View {
    let selectedStarship: Starship

    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(selectedStarship.name)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
            }
            
            Text("Model: \(selectedStarship.model)")
                .padding(.top)
            
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(selectedStarship.name), displayMode: .inline)
    }
}

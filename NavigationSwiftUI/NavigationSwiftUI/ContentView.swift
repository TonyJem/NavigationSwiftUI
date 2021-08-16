import SwiftUI

private let starships: [Starship] = [
    Starship(name: "CR90 corvette",
             model: "CR90 corvette",
             manufacturer: "Corellian Engineering Corporation",
             crew: "",
             passengers: "",
             cargoCapacity: ""),
    
    Starship(name: "Star Destroyer",
             model: "Imperial I-class Star Destroyer",
             manufacturer: "Kuat Drive Yards",
             crew: "",
             passengers: "",
             cargoCapacity: ""),
    
    Starship(name: "Death Star",
             model: "DS-1 Orbital Battle Station",
             manufacturer: "Imperial Department of Military Research, Sienar Fleet Systems",
             crew: "",
             passengers: "",
             cargoCapacity: ""),
    
    Starship(name: "Millennium Falcon",
             model: "YT-1300 light freighter",
             manufacturer: "Corellian Engineering Corporation",
             crew: "",
             passengers: "",
             cargoCapacity: ""),
    
    Starship(name: "Y-wing",
             model: "BTL Y-wing",
             manufacturer: "Koensayr Manufacturing",
             crew: "",
             passengers: "",
             cargoCapacity: ""),
    
    Starship(name: "X-wing",
             model: "T-65 X-wing",
             manufacturer: "Incom Corporation",
             crew: "",
             passengers: "",
             cargoCapacity: ""),
    
    Starship(name: "TIE Advanced x1",
             model: "Twin Ion Engine Advanced x1",
             manufacturer: "Sienar Fleet Systems",
             crew: "",
             passengers: "",
             cargoCapacity: ""),
    
    Starship(name: "Executor",
             model: "Executor-class star dreadnought",
             manufacturer: "Kuat Drive Yards, Fondor Shipyards",
             crew: "",
             passengers: "",
             cargoCapacity: ""),
    
    Starship(name: "Rebel transport",
             model: "GR-75 medium transport",
             manufacturer: "Gallofree Yards, Inc.",
             crew: "",
             passengers: "",
             cargoCapacity: ""),
    
    Starship(name: "Imperial shuttle",
             model: "Lambda-class T-4a shuttle",
             manufacturer: "Sienar Fleet Systems",
             crew: "",
             passengers: "",
             cargoCapacity: "")
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
            
            Text("Manufacturer: \(selectedStarship.manufacturer)")
                .padding(.top)
            
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(selectedStarship.name), displayMode: .inline)
    }
}

import SwiftUI

private let starships: [Starship] = [
    Starship(name: "CR90 corvette",
             image: "01",
             model: "CR90 corvette",
             manufacturer: "Corellian Engineering Corporation",
             crew: "30-165",
             passengers: "600",
             cargoCapacity: "3000000"),
    
    Starship(name: "Star Destroyer",
             image: "02",
             model: "Imperial I-class Star Destroyer",
             manufacturer: "Kuat Drive Yards",
             crew: "47,060",
             passengers: "n/a",
             cargoCapacity: "36000000"),
    
    Starship(name: "Death Star",
             image: "03",
             model: "DS-1 Orbital Battle Station",
             manufacturer: "Imperial Department of Military Research, Sienar Fleet Systems",
             crew: "342,953",
             passengers: "843,342",
             cargoCapacity: "1000000000000"),
    
    Starship(name: "Millennium Falcon",
             image: "04",
             model: "YT-1300 light freighter",
             manufacturer: "Corellian Engineering Corporation",
             crew: "4",
             passengers: "6",
             cargoCapacity: "100000"),
    
    Starship(name: "Y-wing",
             image: "05",
             model: "BTL Y-wing",
             manufacturer: "Koensayr Manufacturing",
             crew: "2",
             passengers: "0",
             cargoCapacity: "110"),
    
    Starship(name: "X-wing",
             image: "06",
             model: "T-65 X-wing",
             manufacturer: "Incom Corporation",
             crew: "1",
             passengers: "0",
             cargoCapacity: "110"),
    
    Starship(name: "TIE Advanced x1",
             image: "07",
             model: "Twin Ion Engine Advanced x1",
             manufacturer: "Sienar Fleet Systems",
             crew: "1",
             passengers: "0",
             cargoCapacity: "150"),
    
    Starship(name: "Executor",
             image: "08",
             model: "Executor-class star dreadnought",
             manufacturer: "Kuat Drive Yards, Fondor Shipyards",
             crew: "279,144",
             passengers: "38000",
             cargoCapacity: "250000000"),
    
    Starship(name: "Rebel transport",
             image: "09",
             model: "GR-75 medium transport",
             manufacturer: "Gallofree Yards, Inc.",
             crew: "6",
             passengers: "90",
             cargoCapacity: "19000000"),
    
    Starship(name: "Imperial shuttle",
             image: "10",
             model: "Lambda-class T-4a shuttle",
             manufacturer: "Sienar Fleet Systems",
             crew: "6",
             passengers: "20",
             cargoCapacity: "80000")
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
            
            Image("\(selectedStarship.image)")
                .resizable()
                .scaledToFit()
            
            Text("Model: \(selectedStarship.model)")
                .padding(.top)
            
            Text("Manufacturer: \(selectedStarship.manufacturer)")
                .padding(.top)
            
            Text("Crew: \(selectedStarship.crew)")
                .padding(.top)
            
            Text("Passengers: \(selectedStarship.passengers)")
                .padding(.top)
            
            Text("Cargocapacity: \(selectedStarship.cargoCapacity)")
                .padding(.top)
            
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(selectedStarship.name), displayMode: .inline)
    }
}

import SwiftUI

struct Starship: Identifiable {
    let id = UUID()
    let name: String
    let model: String
    let manufacturer: String
    let crew: String
    let passengers: String
    let cargoCapacity: String
}

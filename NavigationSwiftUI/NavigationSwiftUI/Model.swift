import SwiftUI

struct Model: Identifiable {
    let name: String
    let color: Color
    var id: String {
        name
    }
}

import SwiftUI

struct Model: Identifiable {
    let name: String
    
    var id: String {
        name
    }
}

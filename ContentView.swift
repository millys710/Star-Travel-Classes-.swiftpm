import SwiftUI

struct ContentView: View {
    @Binding var myStarVisits: StarTravel
    var body: some View {
        NavigationView {
            VStack {
                TextField("First Star To Visit", text: $myStarVisits.firstStarName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .disableAutocorrection(true)
                
                NavigationLink("Go To First Star"){
                    firstStarView(myStarVisits: $myStarVisits)
                }.foregroundColor(.orange)
            }
            .navigationTitle("Intergalactic Travel")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("Space")
                    .resizable()
                    .scaledToFill()
            )
            
        }
        .navigationViewStyle(.stack)
    }
}

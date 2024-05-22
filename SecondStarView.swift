import SwiftUI
struct secondStarView: View{
    @Binding var myStarVisits: StarTravel
    var body: some View {
        Image("\(myStarVisits.secondStarName)")
            .resizable()
            .scaledToFill()
        TextField("", text: $myStarVisits.secondStarName)
            .textFieldStyle(.roundedBorder)
            .padding()
            .disableAutocorrection(true)
        NavigationLink("Go to Summary"){
            summaryView(myStarVisits: $myStarVisits)
        }
    }    
}


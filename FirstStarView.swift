import SwiftUI
struct firstStarView: View{
    @Binding var myStarVisits: StarTravel
    var body: some View {
        Image("\(myStarVisits.firstStarName)")
            .resizable()
            .scaledToFill()
        TextField("", text: $myStarVisits.firstStarName)
            .textFieldStyle(.roundedBorder)
            .padding()
            .disableAutocorrection(true)
        NavigationLink("Go to second Star"){
            secondStarView(myStarVisits: $myStarVisits)   
        }
    }    
}

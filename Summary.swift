import SwiftUI
struct summaryView: View{
    @Binding var myStarVisits: StarTravel
    var body: some View {
        Text("You've visited \(myStarVisits.firstStarName)")
        Text("It was a trip of \(myStarVisits.firstStarName.count) light years")
        Divider()
        Text("You've visited \(myStarVisits.secondStarName)")
        Text("It was a trip of \(myStarVisits.secondStarName.count) light years")
        
    }
}

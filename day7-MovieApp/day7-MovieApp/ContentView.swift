//
//  ContentView.swift
//  day7-MovieApp
//
//  Created by Shaimaa on 23/03/2022.
//

import SwiftUI

struct ContentView: View {
    var movies = ["babyDayOut", "angryBirds", "fiveFeetApart"]
    var body: some View {
        
        
            NavigationView{
        List(movies, id:\.self){ movie in
            NavigationLink(
                destination: Text("destination"),
                label: {
                    MovieRow(movie: movie)

                })

            
        }.navigationTitle("movies")
            
            
//            NavigationLink(destination: detailsView()){
//            movieRow(movie2: movieee)
//        }
//        }.navigationTitle("click")
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }

        }
    }}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

}}
struct MovieRow: View {
    let movie : String
    var body: some View {
        HStack{
            Image(movie)
                .resizable()
                .scaledToFit()
                .frame(width: 85, height: 85)
                .clipShape(Circle())
            Text(movie)
                .font(.title3)
                .bold()
        }
    }
}

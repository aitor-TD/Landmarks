//
//  ContentView.swift
//  Landmarks
//
//  Created by Aitor Trillo Díaz on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 450)
                
            CircleImage()
                .offset(x: 130, y: -110)
                .padding(.bottom, -260)

            VStack(alignment: .leading) {
                Text("Beas de Granada")
                    .font(.title)
                    .padding(.bottom, 10)
                VStack {
                    HStack {
                        Image(systemName: "location")
                        Text("Granada, Spain")
                            .font(.subheadline)
                        Spacer()
                        Image(systemName: "cloud")
                        Text("Max: 10º  |  Min: 3º")
                            .font(.subheadline)
                    }
                    
                }
                
                Divider()
                    .padding()
                    
                
                Text("What to see in Beas de Granada")
                    .padding(.bottom, 3)
                Text("- La Pradera")
                    .padding(1)
                Text("- El Nacimiento")
                    .padding(1)
                Text("- La Pradera")
                    .padding(1)
                Text("- La Pradera")
                    .padding(1)
                
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

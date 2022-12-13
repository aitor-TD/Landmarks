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
            Image(systemName: "music.note.tv")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 120.0)
                .imageScale(.large)
                .padding(70)
            VStack(alignment: .center) {
                Text("Aitor's SwiftUI")
                    .font(.title3)
                VStack {
                    Text("13/12/2022")
                        .font(.footnote)
                    Text("Granada, Spain")
                        .font(.subheadline)
                }
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Aitor Trillo Díaz on 13/12/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .padding(.bottom, 3)
                VStack {
                    HStack {
                        Image(systemName: "location")
                        Text(landmark.state)
                            .font(.subheadline)
                        Spacer()
                        Image(systemName: "tree")
                        Text(landmark.park)
                            .font(.subheadline)
                    }
                }
                Divider()
                    .padding()
                Text("About \(landmark.name)")
                    .font(.title3)
                    .padding(.bottom, 10)
                Text(landmark.description)
                    .font(.subheadline)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}

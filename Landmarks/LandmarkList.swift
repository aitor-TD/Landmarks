//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Aitor Trillo Díaz on 13/12/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
        }
        .navigationTitle("Hola")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}

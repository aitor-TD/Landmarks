//
//  CircleImage.swift
//  Landmarks
//
//  Created by Aitor Trillo Díaz on 13/12/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("fraile")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 9)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

//
//  CircleImage.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 17/11/23.
//

import SwiftUI

struct CircleImage: View {
    var image:String
    var width:CGFloat
    var height:CGFloat
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: width,height: height)
            .clipShape(Circle())
    }
}

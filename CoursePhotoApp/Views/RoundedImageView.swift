//
//  RoundedImageView.swift
//  CoursePhotoApp
//
//  Created by Johnathan F on 01/08/23.
//

import SwiftUI


struct RoundedImageView: View {
    var imageName: String = "JCavaco"
    var cornerRadius: CGFloat = 20
    
    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 8))
           
    }
}

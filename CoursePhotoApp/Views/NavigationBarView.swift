//
//  NavigationBarView.swift
//  CoursePhotoApp
//
//  Created by Johnathan F on 02/08/23.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        VStack {
            HStack{
                Button(action: {}){
                    Image(systemName: "camera")
                        .font(.headline)
                }
                .foregroundColor(.black)
                Spacer()
                Text("PhotoApp")
                    .font(Font.custom("Billabong", size: 26))
                Spacer()
                Button(action: {}){
                    Image(uiImage:  #imageLiteral(resourceName: "ImgFolder"))
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 36, height: 36)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                    
                }
                
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top)
            
        }
    }
}


struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}

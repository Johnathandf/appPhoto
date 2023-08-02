//
//  CardView.swift
//  CoursePhotoApp
//
//  Created by Johnathan F on 02/08/23.
//

import SwiftUI

struct CardView: View {
    var post: Post
    
    var body: some View {
        VStack{
            HStack{
                RoundedImageView(imageName: post.userImageUrl, cornerRadius: 5)
                    .frame(width: 40, height: 36)
                    .aspectRatio(contentMode: .fit)
                
                VStack(alignment: .leading){
                    Text(post.userName)
                        .font(.footnote).fontWeight(.bold)
                    
                    HStack{
                        Text(post.location)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text(post.timePostedSinceNow)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                }
                
            }
            RoundedImageView(imageName: post.postImage)
                .frame(height: 300)
                .shadow(color: Color.defaultShadowColor(), radius: 15, x: 3, y:4)
            
            HStack(spacing: 20) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "heart").font(Font.headline.weight(.semibold))
                        Text("\(post.likeCount)").font(.caption)
                    }
                }.foregroundColor(.black)
                
                Button(action: {}){
                    HStack {
                        Image(systemName: "bubble.right").font(Font.headline.weight(.semibold))
                        Text("\(post.commentCount)")
                    }
                }.foregroundColor(.black)
                Spacer()
                
            }
            .padding(.top)
            .padding(.leading)
            
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(post: Post(userImageUrl: "ImgFolder", userName: "John", location: "Brasilia, Brazil", timePostedSinceNow: "2 minutes ago", postImage: "Ft01", commentCount: 5, likeCount: 3))
    }
}


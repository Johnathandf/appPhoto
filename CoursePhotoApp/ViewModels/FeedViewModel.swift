//
//  FeedViewModel.swift
//  CoursePhotoApp
//
//  Created by Johnathan F on 01/08/23.
//

import Foundation
import Combine
import SwiftUI

struct Post: Identifiable {
    var id: UUID = UUID()
    var userImageUrl: String // Usando String para representar o caminho ou nome da imagem
    var userName: String
    var location: String
    var timePostedSinceNow: String
    var postImage: String // Usando String para representar o caminho ou nome da imagem
    var commentCount: Int
    var likeCount: Int
}

let postData = [
    Post(userImageUrl: "ImgFolder", userName: "Mille_f", location: "London, England", timePostedSinceNow: "2 minutes ago", postImage: "Ft01", commentCount: 3, likeCount: 3),
    Post(userImageUrl: "ImgFolder", userName: "Carmem Sandiego",location: "Sao Paulo, Brazil", timePostedSinceNow: "10 minutes ago", postImage: "Ft02", commentCount: 6, likeCount: 5),
    Post(userImageUrl: "ImgFolder", userName: "Lucas Camargo", location: "Brasilia, Brazil",  timePostedSinceNow: "5 hours ago", postImage: "Ft03", commentCount: 13, likeCount: 32),
    Post(userImageUrl: "Princ", userName: "Katia Fonseca", location: "Goiania, Brazil",  timePostedSinceNow: "1 day ago", postImage: "Ft04jpg", commentCount: 25, likeCount: 89),
    Post(userImageUrl: "JCavaco", userName: "DuCavaco", location: "Salvador, Brazil",  timePostedSinceNow: "1 month ago", postImage: "Ft05", commentCount: 90, likeCount: 99)
]


class FeedViewModel: ObservableObject{
    
    @Published var posts: [Post]
    
    var cancellable: AnyCancellable?
    
    init() {
        self.posts = []
    }
    
    func loadPosts() {
        let subject = PassthroughSubject<[Post], Never>()
        cancellable = subject
            .sink(receiveValue: { posts in
                self.posts = posts
                
            })

        subject.send(postData)

    }
        
    
    
}

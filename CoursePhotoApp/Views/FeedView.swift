//
// FeedView.swift
//  CoursePhotoApp
//
//  Created by Johnathan F on 31/07/23.
//

import SwiftUI

func screenSize () -> CGSize{
    return UIScreen.main.bounds.size
}

struct FeedView: View {
    @ObservedObject var feedViewModel: FeedViewModel
    
    init(feedViewModel: FeedViewModel){
        self.feedViewModel = feedViewModel
    }
    
    
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                
                VStack {
                    if !self.feedViewModel.posts.isEmpty {
                        ScrollView{
                           ForEach(self.feedViewModel.posts) { post in
                               CardView(post: post)
                           }
                       }
                       .padding(.bottom)
                        
                    }
                    
                }
                    
                    Spacer()
                }
        }.edgesIgnoringSafeArea(.bottom)
            .onAppear{
                self.feedViewModel.loadPosts()
            }
            
        }
    }
    
    struct FeedView_Previews: PreviewProvider {
        static var previews: some View {
            FeedView(feedViewModel: FeedViewModel())
        }
    }
    

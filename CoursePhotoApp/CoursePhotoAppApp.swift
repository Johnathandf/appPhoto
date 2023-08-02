//
//  CoursePhotoAppApp.swift
//  CoursePhotoApp
//
//  Created by Johnathan F on 31/07/23.
//

import SwiftUI

@main
struct CoursePhotoAppApp: App {
    var body: some Scene {
        WindowGroup {
            FeedView(feedViewModel: FeedViewModel())
        }
    }
}

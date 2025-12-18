//
//  iOSApps.swift
//  IgniteStarter
//
//  Created by Gunner Speros on 12/16/25.
//

import Foundation
import Ignite

struct iOSApps: StaticPage {
    var title = "iOS"
    var path: String { "/iOS" }
    let appIconWidth = 250
    
    var body: some HTML {
        MyNavBar()
            .padding(.bottom, 64)
        
        Text("My iOS Apps")
            .font(.title1)
            .fontWeight(.light)
            .horizontalAlignment(.center)
        
            AppDetailsSection(
                textAlignedLeading: true,
                appName: "WorkoutList",
                appDescription: workoutListDescription,
                videoPath: "/videos/testVideo.mov"
            )
            
            AppDetailsSection(
                textAlignedLeading: false,
                appName: "WorkoutList",
                appDescription: workoutListDescription,
                videoPath: "/videos/testVideo.mov"
            )
    }
    
    let workoutListDescription = """
        WorkoutList is an app where you can track workouts. It uses Liquid Glass to beautifully show your workouts and animate when expanding and collapsing.

        The exercise data is stored using SwiftData so you can quickly update your info and not worry about loading times.
        """
}

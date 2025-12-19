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
            appName: "My Cooking Helper",
            appDescription: myCookingHelperDescription,
            videoPath: "/videos/mch demo.mov"
        )
        
        AppDetailsSection(
            textAlignedLeading: false,
            appName: "Travel Tracker",
            appDescription: travelTrackerDescription,
            videoPath: "/videos/Travel Tracker.mov"
        )
        
        AppDetailsSection(
            textAlignedLeading: true,
            appName: "My Movie List",
            appDescription: myMovieListDescription,
            videoPath: "/videos/movie list demo.mov"
        )
    }
    
    let workoutListDescription = """
        WorkoutList is an app where you can track workouts. It uses Liquid Glass to beautifully show your workouts and animate when expanding and collapsing.

        The exercise data is stored using SwiftData so you can quickly update your info and not worry about loading times.
        """
    
    let myCookingHelperDescription = """
        My Cooking Helper is an app to help you with all your cooking needs. You can save your recipes including the ingredients and any links to articles or videos. You can also easily add all the ingredients to your shopping list. If you need some inspiration, the app utilizes Apple Intelligence Foundation Models to generate a new recipe for you that you can save to your list.
        """
    
    let travelTrackerDescription = """
        Travel Tracker helps you remember all the places you've been. Search for a new place and pin it to your map. You can then add pictures and notes about each city to store your best memories in that city.  
        """
    
    let myMovieListDescription = """
        If you get way too many movie recommendations from your friends, MyMovieList is the app for you. Swift Concurrency allows you to search using the IMDb database and add a movie to your watch list or seen list. Once you've seen the movie you can long press on it in your watch list and mark it as seen.
        """
}

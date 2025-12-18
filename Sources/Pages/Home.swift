import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"
    var path: String { "/home" }
    
    var body: some HTML {
        MyNavBar()
        
        Grid {
            Image("/images/me/suit-square.jpeg", description: "picture of Gunner Speros")
                .resizable()
                .width(4)
                .cornerRadius(3)
            
            Grid {
                Text("Gunner Speros")
                    .font(.title1)
                    .fontWeight(.light)
                    .horizontalAlignment(.center)
                    .width(4)
                
                Text("I am an application developer with a focus on the Swift language. I am passionate about the future of iOS and visionOS development.")
                    .font(.title3)
                    .fontWeight(.thin)
                    .horizontalAlignment(.center)
            }
            .columns(1)
        }
        .columns(2)
        
        .margin(.bottom, 64)
        .padding(.top, 64)
        
        Text("iOS Apps")
            .font(.title2)
            .fontWeight(.light)
            .horizontalAlignment(.leading)
            .margin(.none)
        
        Grid {
            myCookingHelper
            
            travelTracker
            
            myMovieList
        }
        .columns(3)
        .margin(.bottom, 64)
        
//        Text("visionOS Apps")
//            .font(.title2)
//            .fontWeight(.light)
//            .horizontalAlignment(.leading)
//            .margin(.none)
//        
//        Grid {
//            Grid {
//                Image("/images/visionOS Apps/test Wide Screen.png", description: "a visionOS app")
//                    .resizable()
//                VStack(alignment: .leading) {
//                    Text("This is text describing the above app.")
//                    Text("Key Technologies used:")
//                    Text("• SwiftData")
//                    Text("• SwiftUI")
//                    Text("• Liquid Glass")
//                }
//            }
//            .columns(1)
//            
//            Grid {
//                Image("/images/visionOS Apps/test Wide Screen.png", description: "a visionOS app")
//                    .resizable()
//                VStack(alignment: .center) {
//                    Text("This is text describing the above app.")
//                    Text("Key Technologies used:")
//                    Text("• SwiftData")
//                    Text("• SwiftUI")
//                    Text("• Liquid Glass")
//                }
//                .horizontalAlignment(.leading)
//            }
//            .columns(1)
//        }
//        .columns(1)
    }
    
    var myCookingHelper: some HTML {
        Grid {
            Image("/images/iOS Apps/screenshots/mch screen.png", description: "screenshot of My Cooking Helper App")
                .resizable()
                .width(4)
                .shadow(radius: 3)
            
            AppSummary(
                appName: "My Cooking Helper",
                appDescription: "Keeps track of your recipes and shopping list. Uses Apple Intelligence to suggest new recipes.",
                keyTech1: "Foundation Models",
                keyTech2: "SwiftData",
                keyTech3: "Liquid Glass"
            )
        }
        .columns(1)
        .margin(.horizontal)
    }
    
    var travelTracker: some HTML {
        Grid {
            Image("/images/iOS Apps/screenshots/travel tracker screen.png", description: "screenshot of Travel Tracker App")
                .resizable()
                .width(4)
                .shadow(radius: 3)
            
            AppSummary(
                appName: "Travel Tracker",
                appDescription: "Maps out places you've traveled. Add photos and notes about each location.",
                keyTech1: "MapKit",
                keyTech2: "PhotosPicker",
                keyTech3: "Liquid Glass"
            )
        }
        .columns(1)
        .margin(.horizontal)
    }
    
    var myMovieList: some HTML {
        Grid {
            Image("/images/iOS Apps/screenshots/movie list screen.png", description: "screenshot of My Movie List App")
                .resizable()
                .width(4)
                .shadow(radius: 3)
            
            AppSummary(
                appName: "My Movie List",
                appDescription: "Save the movies you have seen and still need to watch. Search for movies using the IMDb database.",
                keyTech1: "async/await",
                keyTech2: "SwiftData",
                keyTech3: "Liquid Glass"
            )
        }
        .columns(1)
        .margin(.horizontal)
    }
}

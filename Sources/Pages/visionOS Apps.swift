//
//  visionOSApps.swift
//  IgniteStarter
//
//  Created by Gunner Speros on 12/16/25.
//

import Foundation
import Ignite

struct visionOSApps: StaticPage {
    var title = "visionOS"
    var path: String { "/visionOS" }
    
    var body: some HTML {
        MyNavBar()
        
        Text("visionOS Apps Go Here")
            .padding(.top, 64)
    }
}

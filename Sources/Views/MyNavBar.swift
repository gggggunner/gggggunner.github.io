//
//  MyNavBar.swift
//  IgniteStarter
//
//  Created by Gunner Speros on 12/16/25.
//

import Foundation
import Ignite

struct MyNavBar: HTML {
    var body: some HTML {
        NavigationBar(logo: "Gunner Speros | iOS Developer") {
            Link("Home", target: Home())
            Link("iOS", target: iOSApps())
//            Link("visionOS", target: visionOSApps())
        }
        .navigationBarStyle(.dark)
        .background(.black)
        .position(.fixedTop)
    }
}

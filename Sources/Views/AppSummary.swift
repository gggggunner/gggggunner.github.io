//
//  File.swift
//  IgniteStarter
//
//  Created by Gunner Speros on 12/18/25.
//

import Foundation
import Ignite

public struct AppSummary: HTML {
    let appName: String
    let appDescription: String
    let keyTech1: String
    let keyTech2: String
    let keyTech3: String
    
    public init(appName: String, appDescription: String, keyTech1: String, keyTech2: String, keyTech3: String) {
        self.appName = appName
        self.appDescription = appDescription
        self.keyTech1 = keyTech1
        self.keyTech2 = keyTech2
        self.keyTech3 = keyTech3
    }
    
    public var body: some HTML {
        VStack(alignment: .leading) {
            Text(appName)
                .fontWeight(.regular)
            Text(appDescription)
                .fontWeight(.thin)
                .padding(.bottom)
            
            Text("Key Technologies used:")
                .fontWeight(.regular)
            Text("• \(keyTech1)")
                .fontWeight(.thin)
            Text("• \(keyTech2)")
                .fontWeight(.thin)
            Text("• \(keyTech3)")
                .fontWeight(.thin)
        }
    }
}

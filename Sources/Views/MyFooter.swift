//
//  MyFooter.swift
//  IgniteStarter
//
//  Created by Gunner Speros on 12/16/25.
//

import Foundation
import Ignite

public struct MyFooter: HTML {
    public init() {}

    public var body: some HTML {
        VStack {
            Divider()
            
            Text("Contact Me")
                .font(.title3)
                .fontWeight(.bold)
            
            Text("gunner.zak41@gmail.com")
                .fontWeight(.thin)
            Text("(937) 823-0002")
                .fontWeight(.thin)
        }
        .horizontalAlignment(.center)
        .margin(.top, .xLarge)
    }
}

//
//  File.swift
//  IgniteStarter
//
//  Created by Gunner Speros on 12/18/25.
//

import Foundation
import Ignite

public struct AppDetailsSection: HTML {
    let textAlignedLeading: Bool
    let appName: String
    let appDescription: String
    let videoPath: String
    
    public init(textAlignedLeading: Bool = true, appName: String, appDescription: String, videoPath: String) {
        self.textAlignedLeading = textAlignedLeading
        self.appName = appName
        self.appDescription = appDescription
        self.videoPath = videoPath
    }
    
    public var body: some HTML {
        if textAlignedLeading {
            textLeadingSection
                .hidden(.responsive(true, small: true, medium: false, large: false, xLarge: false, xxLarge: false))
            
            textTrailingSection
                .hidden(.responsive(false, small: false, medium: true, large: true, xLarge: true, xxLarge: true))
        } else {
            textTrailingSection
        }
    }
    
    private var appDetails: some HTML {
        Grid {
            Text(appName)
                .font(.title2)
                .horizontalAlignment(.center)
            
            Text(appDescription)
                .horizontalAlignment(.leading)
        }
        .columns(1)
        .margin()
    }
    
    private var video: some HTML {
        VStack{
            Video(videoPath)
                .style(.width, "100%")
        }
    }
    
    private var textLeadingSection: some HTML {
        Grid {
            appDetails
            
            video
        }
        .columns(2)
        .padding()
    }
    
    private var textTrailingSection: some HTML {
        Grid {
            video
            
            appDetails
        }
        .columns(2)
        .padding()
    }
}

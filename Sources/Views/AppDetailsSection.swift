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
        PageLayout(textAlignedLeading: textAlignedLeading, textLeadingSection: textLeadingSection, textTrailingSection: textTrailingSection)
            .hidden(.responsive(true, small: true, medium: false, large: false, xLarge: false, xxLarge: false))
        
        // use for mobile
        PageLayout(textAlignedLeading: false, textLeadingSection: textLeadingSection, textTrailingSection: textTrailingSection)
            .hidden(.responsive(false, small: false, medium: true, large: true, xLarge: true, xxLarge: true))
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
    }
    
    var textLeadingSection: some HTML {
        Grid {
            Grid {
                Text(appName)
                    .font(.title2)
                    .horizontalAlignment(.center)
                
                Text(appDescription)
                    .horizontalAlignment(.leading)
            }
            .columns(1)
            
            Video(videoPath)
                .style(.width, "100%")
                .padding(.horizontal, 128)
        }
        .columns(2)
        .padding()
    }
    
    var textTrailingSection: some HTML {
        Grid {
            Video(videoPath)
                .style(.width, "100%")
                .padding(.horizontal, 96)
            
            appDetails
        }
        .columns(2)
        .padding()
    }
    
    /// Had to use this to get the layout to behave differently on mobile properly
    /// Used to place video above text on each section in mobile by always passing textAlignedLeading = false when mobile
    private struct PageLayout: HTML {
        let textAlignedLeading: Bool
        let textLeadingSection: any HTML
        let textTrailingSection: any HTML
        
        public init(textAlignedLeading: Bool, textLeadingSection: any HTML, textTrailingSection: any HTML) {
            self.textAlignedLeading = textAlignedLeading
            self.textLeadingSection = textLeadingSection
            self.textTrailingSection = textTrailingSection
        }
        
        var body: some HTML {
            if textAlignedLeading {
                textLeadingSection
            } else {
                textTrailingSection
            }
        }
    }
}

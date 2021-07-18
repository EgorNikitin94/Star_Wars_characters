//
//  TabBarView.swift
//  StarWarsCharacters
//
//  Created by Егор Никитин on 18.07.2021.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            СharactersView()
                .tabItem {
                    Label("Feed", systemImage: "house.fill")
                }
            
            VKLoginView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            
            PlayerView()
                .tabItem {
                    Label("Player", systemImage: "music.note")
                }
            
            VideoView()
                .tabItem {
                    Label("Video", systemImage: "video.fill")
                }
            
            RecorderView()
                .tabItem {
                    Label("Recorder", systemImage: "mic.fill")
                }

        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBarView()
            TabBarView()
                .preferredColorScheme(.dark)
        }
        
    }
}

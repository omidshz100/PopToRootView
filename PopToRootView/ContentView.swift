//
//  ContentView.swift
//  PopToRootView
//
//  Created by Omid Shojaeian Zanjani on 12/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var activeTab:Pages = .home
    
    @State var homePaths:NavigationPath = .init()
    @State var settingsPaths:NavigationPath = .init()
    
    @State var tappCount: Int = 0
    var body: some View {
        TabView(selection: tabSelected) {
            NavigationStack(path: $homePaths){
                List{
                    NavigationLink("Detail", value: "Detail")
                }
                .navigationTitle("Home")
                .navigationDestination(for: String.self) { value in
                    VStack{
                        Button {
                            // whith button we can pop the last or any times of views prom path to make back like action
                            homePaths.removeLast()
                        } label: {
                            Text("Pop view")
                        }

                        List{
                            if value == "Detail" {
                                NavigationLink("More", value: "More")
                            }else{
                                NavigationLink("More \(value)", value: "More\(Int.random(in: 100...150))")
                            }
                        }
                    }
                    .navigationTitle("\(value)")
                }
            }
            .tag(Pages.home)
            .tabItem {
                Image(systemName: Pages.home.symbolImage)
                Text(Pages.home.rawValue)
            }
            
            
            NavigationStack(path: $settingsPaths){
                List{
                    NavigationLink("Detail", value: "Detail")
                }
                .navigationTitle("Settings")
                .navigationDestination(for: String.self) { value in
                    List{
                        if value == "Detail" {
                            NavigationLink("More", value: "More")
                        }
                    }
                    .navigationTitle("\(value)")
                }
            }
            .tag(Pages.settings)
            .tabItem {
                Image(systemName: Pages.settings.symbolImage)
                Text(Pages.settings.rawValue)
            }
        }
    }
    
    var tabSelected: Binding<Pages> {
        return .init {
            activeTab
        } set: { newValue in
            if newValue == activeTab {
                switch newValue {
                case .home: 
                    
                    tappCount += 1
                    
                    if tappCount == 2 {
                        homePaths = .init()
                        tappCount = .zero
                    }
                    print("tappCount = \(tappCount)")
                case .settings: settingsPaths = .init()
                    tappCount -= 1
                    print("tappCount = \(tappCount)")
                }
            }else {
                activeTab = newValue
            }
            
        }
    }
}

#Preview {
    ContentView()
}

enum Pages:String {
    case home = "Home"
    case settings = "Settings"
    var symbolImage:String {
        switch self {
        case .home:
            return "house"
        case .settings:
            return "gear"
        }
    }
}

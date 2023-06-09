//
//  ContentView.swift
//  Plda
//
//  Created by 최유경 on 2023/07/07.
//

import SwiftUI

struct ContentView: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor(displayP3Red: 0.26, green: 0.48, blue: 0.36, alpha: 1)]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(displayP3Red: 0.26, green: 0.48, blue: 0.36, alpha: 1)]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        
    }
    
    
    
    
    var body: some View {
        NavigationView {
            ZStack(){
                DiaryListView()
            }
            .navigationTitle("PLAY DIARY")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing:
                                    HStack {
                Button(action: {}) {
                    Image("heart").frame(width: 20, height: 18)
                }
                Button(action: {}) {
                    Image("setting").frame(width: 20, height: 16)
                }
                
            }
            )
            
        }
        
    }
}

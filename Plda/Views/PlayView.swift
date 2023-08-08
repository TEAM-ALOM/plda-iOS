//
//  PlayView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/01.
//

import SwiftUI

struct PlayView: View {
    var body: some View {
        NavigationView {
            ZStack(){
                SubPlayView()
            }
            .navigationBarTitle("")
            .navigationBarItems(
                leading: // title
                Text("PLAY LIST")
                    .font(.ExtraBold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.DarkGreen),
                trailing:
                    HStack {
                        Button(action: {}) {
                            Image("home").frame(width: 20, height: 18)
                        }
                        
                        Button(action: {}) {
                            Image("setting").frame(width: 20, height: 16)
                            
                        }
                    })
        }    }
}



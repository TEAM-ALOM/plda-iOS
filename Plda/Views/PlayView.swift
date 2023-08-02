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
                    .font(
                        Font.custom("Pretendard", size: 36)
                            .weight(.heavy)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.26, green: 0.48, blue: 0.36)),
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



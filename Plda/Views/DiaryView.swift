//
//  DiaryView.swift
//  Plda
//
//  Created by 최유경 on 2023/07/20.
//

import SwiftUI

struct DiaryView: View {
    
    var body: some View {
        NavigationView {
            ZStack(){
                MainDiaryView()
            }
            .navigationBarTitle("")
            .navigationBarItems(
                leading: // title
                Text("PLAY DIARY")
                    .font(
                        Font.custom("Pretendard", size: 36)
                            .weight(.heavy)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.26, green: 0.48, blue: 0.36)),
                trailing:
                    HStack {
                        Button(action: {}) {
                            Image("heart").frame(width: 20, height: 18)
                        }
                        
                        Button(action: {}) {
                            Image("setting").frame(width: 20, height: 16)
                            
                        }
                    })
        }
    }
}


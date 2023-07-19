//
//  ContentView.swift
//  Plda
//
//  Created by 최유경 on 2023/07/07.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack(){
                //DiaryListView()
                MainDiaryView()
                //피그마에 메인화면과 단순화한 화면을 어떤 버튼으로 전환하는지 안 나와 있어서 일단 이렇게 했습니다
                
                Button(action: {}) {
                    Image("pencil")
                        .frame(width: 42, height: 42)
                        .padding(EdgeInsets(top: 670, leading: 170, bottom: 120, trailing: 170))
                }
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

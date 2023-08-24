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
            ZStack{
                SubDiaryView()
            }
            .navigationBarTitle("")
            .navigationBarItems(
                leading: // title
                Text("PLAY DIARY")
                    .font(.extraBold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.darkGreen),
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


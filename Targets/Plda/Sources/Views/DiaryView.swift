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
                            PldaAsset.Images.heart.swiftUIImage
                                .frame(width: 20, height: 18)
                        }
                        
                        Button(action: {}) {
                            PldaAsset.Images.setting.swiftUIImage
                                .frame(width: 20, height: 16)
                            
                        }
                    })
        }
    }
}


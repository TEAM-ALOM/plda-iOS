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
            SubPlayView()
                .navigationBarTitle("")
                .navigationBarItems(
                    leading: // title
                    Text("PLAY LIST")
                        .font(.extraBold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.darkGreen),
                    trailing:
                        HStack {
                            Button(action: {}) {
                                PldaAsset.Images.home.swiftUIImage
                                    .frame(width: 20, height: 18)
                            }
                            Button(action: {}) {
                                PldaAsset.Images.setting.swiftUIImage
                                    .frame(width: 20, height: 16)
                                
                            }
                        })
        }    }
}



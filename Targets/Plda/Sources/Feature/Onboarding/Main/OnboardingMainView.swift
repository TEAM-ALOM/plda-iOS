//
//  OnboardingMainView.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

public struct OnboardingMainView: View {
    let store: StoreOf<OnboardingMainStore>
    
    public var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack(spacing: 4){
                Spacer()
                Text("PLAY DIARY")
                    .font(PldaFontFamily.Pretendard.extraBold.swiftUIFont(size: 36))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.darkGreen)
                
                Spacer()
                
                HStack{
                    Spacer()
               Text("Apple로 시작하기")
                    .font(PldaFontFamily.Pretendard.bold.swiftUIFont(size: 16))
                        .foregroundColor(.white)
                        .padding(.vertical,9)
                    Spacer()
                }
                .background(Color.darkGreen)
                .cornerRadius(12)
                .padding(.bottom,100)
                .padding(.horizontal,20)
                .onTapGesture {
                    viewStore.send(.nextButtonTapped)
                }
            }
        }
        .background(PldaAsset.Images.background.swiftUIImage)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
}



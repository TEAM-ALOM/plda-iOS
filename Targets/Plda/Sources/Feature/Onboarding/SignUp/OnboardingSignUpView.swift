//
//  OnboardingSignUpView.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

public struct OnboardingSignUpView: View {
    let store: StoreOf<OnboardingSignUpStore>
    @State private var birthDate = Date()
    @State private var tapButtonText = false
    @State private var tapButtonBackground = false
    
    public var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack{
                Spacer()
                HStack(spacing:0){
                    Text("성별")
                        .font(.bold16)
                        .foregroundColor(.darkGreen)
                    Text("과 ")
                        .font(.bold16)
                        .foregroundColor(.black)
                    
                    Text("나이")
                        .font(.bold16)
                        .foregroundColor(.darkGreen)
                    
                    Text("를 알려 주세요!")
                        .font(.bold16)
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.leading,20)
                .padding(.bottom,40)
                HStack{
                    Text("성별")
                        .font(.bold16)
                        .foregroundColor(.gray80)
                        .padding(.leading,20)
                    Spacer()
                }
                
                if tapButtonText{
                    Color.darkGreen
                }
                
                
                HStack(spacing:10){
                    HStack{
                        Spacer()
                        Text("여성")
                            .font(.bold16)
                            .foregroundColor(.gray80)
                        Spacer()
                    }
                    .padding(.vertical,10)
                    .background(Color.gray20)
                    .cornerRadius(12)
                    .onTapGesture {
                        self.tapButtonText.toggle()
                        self.tapButtonBackground.toggle()
                    }
                    
                    HStack{
                        Spacer()
                        Text("남성")
                            .font(.bold16)
                            .foregroundColor(.gray80)
                        Spacer()
                    }
                    .padding(.vertical,10)
                    .background(Color.gray20)
                    .cornerRadius(12)
                }
                .padding(.horizontal,20)
                .padding(.top,0)
                .padding(.bottom,60)
                
                HStack{
                    Spacer()
                    DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                        Text("나이 (출생연도)")
                            .font(.bold16)
                            .foregroundColor(.gray80)
                    }
                }.padding(.horizontal,20)
                
                PldaAsset.Images.vectorGray.swiftUIImage
                    .padding(.top,0)
                    .padding(.horizontal,20)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Text("프로필 설정하러 가기")
                        .font(.bold16)
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
            .background(PldaAsset.Images.background.swiftUIImage)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
}

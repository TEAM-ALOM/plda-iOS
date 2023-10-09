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
    @State private var showingAlert: Bool = false

    @Environment(\.dismiss) private var dismiss
    
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
                
                HStack(spacing:10){
                    HStack{
                        Spacer()
                        Text("여성")
                            .font(.bold16)
                            .foregroundColor(viewStore.state.tapButtonFemale ? .darkGreen : .gray80)
                        Spacer()
                    }
                    .padding(.vertical,10)
                    .background(viewStore.state.tapButtonFemale ? Color.gray40 : Color.gray20)
                    .cornerRadius(12)
                    .onTapGesture {
                        viewStore.send(.femaleButtonTapped)
                    }
                    
                    HStack{
                        Spacer()
                        Text("남성")
                            .font(.bold16)
                            .foregroundColor(viewStore.state.tapButtonMale ? .darkGreen : .gray80)
                        Spacer()
                    }
                    .padding(.vertical,10)
                    .background(viewStore.state.tapButtonMale ? Color.gray40 : Color.gray20)
                    .cornerRadius(12)
                    .onTapGesture {
                        viewStore.send(.maleButtonTapped)
                    }
                    
                }
                .padding(.horizontal,20)
                .padding(.top,0)
                .padding(.bottom,60)

                
                HStack{
                    Spacer()
                   
                    //안되는 코드
                   /* DatePicker(selection: viewStore.binding(get: \.selectedDate, OnboardingMainStore.Action.setDate), in: ...Date(), displayedComponents: .date)*/
                    
                    //되는 코드
                    DatePicker(selection: viewStore.binding(get: \.selectedDate, send: OnboardingSignUpStore.Action.setDate)) {
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
                    if (viewStore.state.tapButton){
                        viewStore.send(.nextButtonTapped)
                    }
                    else{
                        self.showingAlert = true
                    }
                }
                .alert(isPresented: $showingAlert, content: {
                            Alert(title: Text("정보를 입력해주세요"), dismissButton: .default(Text("확인")))
                        })
                
            }
            .background(PldaAsset.Images.background.swiftUIImage)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        PldaAsset.Images.leftArrow.swiftUIImage
                    }
                }
            }
        }
    }
    
}


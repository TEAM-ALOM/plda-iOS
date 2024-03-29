//
//  NameView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/09.
//

import SwiftUI

struct NameView: View {
    @State private var name = ""
    
    var body: some View {
        VStack{
            Spacer()
            HStack(){
                Text("마지막으로,")
                    .font(.bold16)
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading,20)
            
            HStack(spacing:0){
                Text("플다가 회원님을")
                    .font(.bold16)
                    .foregroundColor(.black)
                Text(" 어떻게 ")
                    .font(.bold16)
                    .foregroundColor(.darkGreen)
                Text("부르면 될까요?")
                    .font(.bold16)
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading,20)
            .padding(.bottom,68)
            
            PldaAsset.Images.profile.swiftUIImage
                .padding(.horizontal,40)
                .padding(.bottom,30)
            
            TextField("닉네임", text: $name)
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(.horizontal,20)
            
            Spacer()
            HStack{
                Spacer()
                Text("회원가입 완료")
                    .font(.bold16)
                    .foregroundColor(.white)
                    .padding(.vertical,9)
                Spacer()
            }
            .background(Color.darkGreen)
            .cornerRadius(12)
            .padding(.bottom,100)
            .padding(.horizontal,20)
        }
        .background(PldaAsset.Images.background.swiftUIImage)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


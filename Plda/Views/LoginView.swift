//
//  LoginView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/01.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            Spacer()
            VStack(spacing: 2){
                HStack{
                    Text("다시 만나 반가워요!")
                        .font(
                            Font.custom("Pretendard", size: 16)
                                .weight(.bold)
                        )
                        .kerning(0.384)
                        .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                    Spacer()
                }
                HStack(spacing: 0){
                    Text("플다")
                        .font(
                            Font.custom("Pretendard", size: 16)
                                .weight(.bold)
                        )
                        .kerning(0.384)
                        .foregroundColor(Color(red: 0.26, green: 0.48, blue: 0.36))
                    
                    Text("와 오래 함께해요.")
                        .font(
                            Font.custom("Pretendard", size: 16)
                                .weight(.bold)
                        )
                        .kerning(0.384)
                        .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                    
                    Spacer()
                }
            }
            .padding(.leading,20)
            .padding(.bottom,40)
            
            VStack(spacing: 20){
                TextField("이메일", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                
                SecureField("비밀번호", text:$password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
            }
            .padding(.horizontal,20)
            Spacer()
            HStack{
                Spacer()
                Text("로그인")
                    .font(
                        Font.custom("Pretendard", size: 16)
                            .weight(.bold)
                    )
                    .kerning(0.384)
                    .foregroundColor(.white)
                    .padding(.vertical,9)
                Spacer()
            }
            
            .background(Color(red: 0.26, green: 0.48, blue: 0.36))
            .cornerRadius(12)
            .padding(.bottom,100)
            .padding(.horizontal,20)
            
        }
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

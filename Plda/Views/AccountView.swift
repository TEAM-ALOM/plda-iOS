//
//  AccountView.swift
//  Plda
//
//  Created by 최유경 on 2023/07/20.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        
        VStack(spacing: 4){
            Spacer()
            Spacer()
            
            HStack{
                Text("PLAY DIARY")
                    .font(
                        Font.custom("Pretendard", size: 36)
                            .weight(.heavy)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.26, green: 0.48, blue: 0.36))
            }
            Spacer()
            VStack(spacing: 10){
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
                
                HStack{
                    Spacer()
                    Text("회원가입")
                        .padding(.vertical,9)
                        .font(
                            Font.custom("Pretendard", size: 16)
                                .weight(.bold)
                        )
                        .kerning(0.384)
                        .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13));                    Spacer()
                }
                .background(Color(red: 0.61, green: 0.8, blue: 0.58))
                .cornerRadius(12)
                
            }
            .padding(.bottom,100)
            .padding(.horizontal,20)
            
            
        }
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
    }
}


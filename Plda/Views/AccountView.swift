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
                    .font(.ExtraBold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.DarkGreen)
            }
            Spacer()
            VStack(spacing: 10){
                HStack{
                    Spacer()
                    Text("로그인")
                        .font(.Bold16)
                        .foregroundColor(.white)
                        .padding(.vertical,9)
                    Spacer()
                }
                .background(Color.DarkGreen)
                .cornerRadius(12)
                
                HStack{
                    Spacer()
                    Text("회원가입")
                        .padding(.vertical,9)
                        .font(.Bold16)
                        .foregroundColor(.black);                    Spacer()
                }
                .background(Color.LightGreen)
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


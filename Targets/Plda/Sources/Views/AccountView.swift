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
                    .font(.extraBold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.darkGreen)
            }
            Spacer()
            VStack(spacing: 10){
                HStack{
                    Spacer()
                    Text("로그인")
                        .font(.bold16)
                        .foregroundColor(.white)
                        .padding(.vertical,9)
                    Spacer()
                }
                .background(Color.darkGreen)
                .cornerRadius(12)
                
                HStack{
                    Spacer()
                    Text("회원가입")
                        .padding(.vertical,9)
                        .font(.bold16)
                        .foregroundColor(.black);
                    Spacer()
                }
                .background(Color.lightGreen)
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


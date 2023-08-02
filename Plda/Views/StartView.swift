//
//  StartView.swift
//  Plda
//
//  Created by 최유경 on 2023/07/20.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        
        VStack(spacing: 4){
            Text("PLAY DIARY")
                .font(
                    Font.custom("Pretendard", size: 36)
                        .weight(.heavy)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.26, green: 0.48, blue: 0.36))
            Text("하루의 기록을 플다와 함께")
                .font(
                    Font.custom("Pretendard", size: 16)
                        .weight(.bold)
                )
                .kerning(0.384)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
        }
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
    }
    
}


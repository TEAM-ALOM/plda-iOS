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
                .font(.ExtraBold)
                .multilineTextAlignment(.center)
                .foregroundColor(.DarkGreen)
            Text("하루의 기록을 플다와 함께")
                .font(.Bold16)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
        }
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
    }
    
}


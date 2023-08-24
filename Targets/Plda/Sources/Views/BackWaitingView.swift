//
//  WaitingView2.swift
//  Plda
//
//  Created by 최유경 on 2023/08/16.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

struct BackWaitingView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack{
            
            ZStack{
                Image("Placeholder")
                Image("vector9")
                Image("ribbonHeart")
                
            }
            .padding(.top,0)
                .padding(.horizontal,20)
            
            Text("위로가 될 수 있는 음악을 찾고 있어요")
                .font(.bold16)
                .foregroundColor(.black)
      
        }
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack(){
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("leftArrow")
                    })
                    Spacer()
                }
            }
        }
    }
}

struct WaitingView2_Previews: PreviewProvider {
    static var previews: some View {
        BackWaitingView()
    }
}

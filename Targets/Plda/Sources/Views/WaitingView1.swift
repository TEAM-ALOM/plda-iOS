//
//  WaitingView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/16.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

struct WaitingView1: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack{
            Text("오늘 하루")
                .font(.Bold16)
                .foregroundColor(.black)
            
            ZStack{
                Image("ribbon1")
                Image("Vector9")
               
            } .padding(.top,0)
                .padding(.horizontal,20)
            
            Text("힘들었던 당신을 위해")
                .font(.Bold16)
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
                        Image("leftarrow")
                    })
                    Spacer()
                }
            }
        }
    }
}

struct WaitingView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingView1()
    }
}

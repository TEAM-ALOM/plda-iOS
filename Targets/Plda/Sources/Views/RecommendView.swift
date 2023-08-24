//
//  RecommendView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/16.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI


struct RecommendView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        let image1 = PldaAsset.PreviewAssets.song
        VStack{
            HStack(spacing: 0){
                Image("leftVector")
                    .padding(.trailing,7)
                
                Text("오늘의")
                    .font(.bold24)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
                Text(" 플다 pick")
                    .font(.bold24)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.darkGreen)
                
                Image("rightVector")
                    .padding(.leading,7)
                
            }
            Text("Ice Cream Cake")
                .foregroundColor(.black)
                .font(.medium16)
                .padding(.top,45)
            
            Text("Red Velvet (레드벨벳)")
                .foregroundColor(.black)
                .font(.medium12)
                   
            
            
            //Image(PldaAsset.PreviewAssets.song)
                Image("song")
                .padding(.horizontal,20)
                .padding(.top,20)
            
            
            Image("heartGray")
                .padding(.top,14)
            
            HStack{
                Text("playlist 확인하러 가기")
                    .font(.medium12)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.horizontal,25)
                    .padding(.vertical,10)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.lightGreen, lineWidth: 2)
            )
            .padding(.top,10)
            
            HStack{
                Image("good")
                    .padding(.leading,40)
                Spacer()
                Image("play")
                Spacer()
                Image("bad")
                    .padding(.trailing,40)

                
            }.padding(.top,100)
            
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
                        Image("home")
                    })
                    Spacer()
                }
            }
        }
    }
}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView()
    }
}

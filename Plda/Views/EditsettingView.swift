//
//  EditsettingView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/09.
//

import SwiftUI

struct EditsettingView: View {
    @State private var editname = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView(){
            VStack{
                HStack(){
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("leftarrow")
                    })
                    Spacer()
                }
                .padding(.leading,19)
                .padding(.top,19)
                Spacer()
                Image("profile")
                    .padding(.horizontal,40)
                    .padding(.bottom,80)
                
                TextField("닉네임", text: $editname)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .padding(.horizontal,20)
                    .padding(.bottom,45)
                
                HStack{
                    Spacer()
                    Text("변경")
                        .font(.Bold16)
                        .foregroundColor(.white)
                        .padding(.vertical,9)
                    Spacer()
                }
                .background(Color.DarkGreen)
                .cornerRadius(12)
                .padding(.horizontal,20)
                
                Spacer()
                HStack{
                    Spacer()
                    Text("로그아웃")
                        .font(.Bold16)
                        .foregroundColor(.Gray60)
                }.padding(.trailing,25)
                    .padding(.bottom,30)
            }
            .background(Image("background")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

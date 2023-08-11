//
//  SubPlayView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/01.
//

import SwiftUI

struct SubPlayView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            playListView()
        }
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
    }
}
private func playListView() -> some View {
    @State var title1: [String] = ["제목1", "제목2", "제목3"]
    
    return VStack{
        ForEach(title1,id:\.self) { t1 in
            HStack{
                Image("playlist1")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipped()
                    .cornerRadius(12)
                    .padding(.leading,10)
                
                VStack(spacing: 5){
                    HStack{
                        Text(t1)
                            .font(.Bold16)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                        Spacer()
                        
                    }
                    HStack{
                        Text("태그 1 태그 2 태그 3")
                            .font(.Medium12)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.Gray80)
                        Spacer()
                        
                        Text("20230704")
                            .font(.Medium12)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.Gray80)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 3, bottom: 10, trailing: 10))
            }
            .background(Color.Gray10)
            .cornerRadius(12)
            .padding(EdgeInsets(top: 5, leading: 20, bottom:0, trailing: 20))
        }
    } //VStack
    .padding(.top,12)
    .padding(.bottom,30)
    
}


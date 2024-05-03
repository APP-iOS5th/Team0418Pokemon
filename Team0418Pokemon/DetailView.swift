//
//  DetailView.swift
//  Team0418Pokemon
//
//  Created by 차지용 on 4/30/24.
//
//초기화
import SwiftUI

struct DetailView: View {
    @StateObject private var detailModel = DetailModel(service: MockService())
    var body: some View {
        ZStack{
            Image("detailBg")
                .resizable()
                .edgesIgnoringSafeArea(.all)//Safe Area를 무시하고 이미지 전체를 화면에 채움
            ScrollView {
                PkmImgView(idToSend: 1).frame(width: 200,height: 200)
                GeometryReader { geometry in
                    RoundedRectangle(cornerRadius:25)
                        .fill(Color.white)
                        .frame(height: 900)
                }
                FirstDetailView(id: 1, idToSend: 1)
                    .padding(10)
                Divider()
                VStack(alignment: .leading) {
                    Text("Basic Status")
                        .font(.title)
                    SecondView()
                }
                
            }
        }
    }
}

#Preview {
    DetailView()
}

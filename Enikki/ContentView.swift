//
//  ContentView.swift
//  Enikki
//
//  Created by tiking on 2021/08/10.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            ZStack {
                SketchView()
                    .frame(maxWidth: .infinity, minHeight: 10, maxHeight: 350,  alignment: .center)
                    .padding(Padding.S)
                    .border(Color.imageBorder, width: 10)
                    .padding(.horizontal, Padding.XL)
                if text.isEmpty {
                    Text("ここにきょうの\nできごとをかいてね！")
                        .multilineTextAlignment(.center)
                        .font(.h1)
                        .foregroundColor(Color.imageBorder)
                        .padding(.horizontal, Padding.L)
                }
            }
            Text("8/10")
                .font(.h1)
                .padding(.vertical, Padding.XS)
            ZStack {
                TextEditor(text: $text)
                    .frame(maxWidth: .infinity)
                    .padding(Padding.S)
                    .border(Color.imageBorder, width: 10)
                    .padding(.horizontal, Padding.XL)
                if text.isEmpty {
                    Text("ここにきょうの\nできごとをかいてね！")
                        .multilineTextAlignment(.center)
                        .font(.h1)
                        .foregroundColor(Color.imageBorder)
                        .padding(.horizontal, Padding.L)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

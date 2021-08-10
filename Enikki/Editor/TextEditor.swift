//
//  TextEditor.swift
//  Enikki
//
//  Created by tiking on 2021/08/10.
//

import SwiftUI

struct TateTextEditor: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> TextView {
        let uiView = TextView()
        uiView.isOpaque = false
        uiView.text = text
        return uiView
    }

    func updateUIView(_ uiView: TextView, context: Context) {
        uiView.text = text
    }
}

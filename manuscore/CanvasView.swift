//
//  CanvasView.swift
//  manuscore
//
//  Created by 西田祐太郎 on 2023/09/13.
//
import SwiftUI
import PencilKit
import Foundation

struct CanvasView: UIViewRepresentable {
    @Binding var tool: PKTool
    
    class Coordinator: NSObject, PKCanvasViewDelegate {
        var parent: CanvasView

        init(parent: CanvasView) {
            self.parent = parent
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    func makeUIView(context: Context) -> PKCanvasView {
        let canvasView = PKCanvasView()
        canvasView.delegate = context.coordinator
        return canvasView
    }

    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        uiView.tool = tool
    }
}

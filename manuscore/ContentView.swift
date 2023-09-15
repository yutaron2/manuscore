import SwiftUI
import PencilKit

struct ContentView: View {
    @State private var tool: PKTool = PKInkingTool(.pen, color: .black, width: 15)

    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            
            CanvasView(tool: $tool)
                .frame(height: 400)
                .cornerRadius(10)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

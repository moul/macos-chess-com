//
//  ContentView.swift
//  chess-com
//
//  Created by Manfred Touron on 14/04/2021.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {

    let view: WKWebView = WKWebView()

    var request: URLRequest {
        get {
            let request: URLRequest = URLRequest(url: URL(string: "https://www.chess.com/home")!)
            return request
        }
    }

    func makeNSView(context: Context) -> WKWebView {
        view.load(request)
        return view
    }

    func updateNSView(_ view: WKWebView, context: Context) {
    }

}

struct ContentView: View {
    var body: some View {
        GeometryReader { g in
            ScrollView {
                WebView()
                .frame(height: g.size.height)
            }.frame(height: g.size.height)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

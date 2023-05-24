//
//  ContentView.swift
//  test-dynamic
//
//  Created by 古宮 伸久 on 2023/05/24.
//

import SwiftUI
import FirebaseDynamicLinks

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onOpenURL { url in
            print("url:\(url)")
            let dynamicLinks = DynamicLinks()
            dynamicLinks.resolveShortLink(URL(string: "https://komiyadynamic.page.link/n3UL")!) { dynamicLink, error in
                if let dynamicLink {
                    print("dynamicLink:\(dynamicLink)")
                }
                if let error {
                    print("error:\(error)")
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

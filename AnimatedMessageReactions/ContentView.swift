//
//  ContentView.swift
//  AnimatedMessageReactions
//
//  Created by Stefan Blos on 14.12.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MessageListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

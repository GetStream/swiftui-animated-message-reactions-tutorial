//
//  MessageListView.swift
//  AnimatedMessageReactions
//
//  Created by Stefan Blos on 14.12.21.
//

import SwiftUI

struct MessageListView: View {
    
    @State private var showReactionsBackground = false
    
    var body: some View {
        VStack(alignment: .leading) {
            MessageView(person: "lando", text: "Have you checked out the Stream iOS and SwiftUI SDK's? I hear they are incredible!")
        }
        .padding()
        .navigationTitle("Stream Chat Crew")
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
    }
}

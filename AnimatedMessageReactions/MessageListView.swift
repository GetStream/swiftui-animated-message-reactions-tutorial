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
            ZStack {
                RoundedRectangle(cornerRadius: 28)
                    .fill(Color(UIColor.tertiarySystemGroupedBackground))
                    .frame(width: 216, height: 40)
                    .scaleEffect(showReactionsBackground ? 1 : 0, anchor: .bottomTrailing)
                    .animation(
                        .interpolatingSpring(stiffness: 170, damping: 15).delay(0.05),
                        value: showReactionsBackground
                    )
            }
            
            MessageView(person: "lando", text: "Have you checked out the Stream iOS and SwiftUI SDK's? I hear they are incredible!")
                .onLongPressGesture {
                    showReactionsBackground.toggle()
                }
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

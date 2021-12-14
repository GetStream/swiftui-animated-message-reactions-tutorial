//
//  MessageListView.swift
//  AnimatedMessageReactions
//
//  Created by Stefan Blos on 14.12.21.
//

import SwiftUI

struct MessageListView: View {
    
    @State private var showReactionsBackground = false
    
    @State private var showLike = false
    @State private var showThumbsUp = false
    @State private var thumbsUpRotation: Double = -45 // 🤔
    @State private var showThumbsDown = false
    @State private var thumbsDownRotation: Double = -45 // 🤔
    @State private var showLol = false
    @State private var showWutReaction = false
    
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
                
                HStack(spacing: 20) {
                    Image("like")
                        .scaleEffect(showLike ? 1 : 0)
                    
                    Image("thumbs_up")
                        .scaleEffect(showThumbsUp ? 1 : 0)
                        .rotationEffect(.degrees(thumbsUpRotation))
                    
                    Image("thumbs_down")
                        .scaleEffect(showThumbsDown ? 1 : 0)
                        .rotationEffect(.degrees(thumbsDownRotation))
                    
                    Image("lol")
                        .scaleEffect(showLol ? 1 : 0)
                    
                    Image("wut_reaction")
                        .scaleEffect(showWutReaction ? 1 : 0)
                }
            }
            
            MessageView(person: "lando", text: "Have you checked out the Stream iOS and SwiftUI SDK's? I hear they are incredible!")
                .onLongPressGesture {
                    showReactionsBackground.toggle()
                    
                    withAnimation(.interpolatingSpring(stiffness: 170, damping: 15).delay(0.1)) {
                        showLike.toggle()
                    }
                    
                    withAnimation(.interpolatingSpring(stiffness: 170, damping: 15).delay(0.2)) {
                        showThumbsUp.toggle()
                    }
                    
                    withAnimation(.interpolatingSpring(stiffness: 170, damping: 15).delay(0.3)) {
                        showThumbsDown.toggle()
                    }
                    
                    withAnimation(.interpolatingSpring(stiffness: 170, damping: 15).delay(0.4)) {
                        showLol.toggle()
                    }
                    
                    withAnimation(.interpolatingSpring(stiffness: 170, damping: 15).delay(0.5)) {
                        showWutReaction.toggle()
                    }
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

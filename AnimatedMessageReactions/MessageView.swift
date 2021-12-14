//
//  MessageView.swift
//  AnimatedMessageReactions
//
//  Created by Stefan Blos on 14.12.21.
//

import SwiftUI

struct MessageView: View {
    
    var person: String
    var text: String
    
    var body: some View {
        HStack(alignment: .bottom) {
            Image(person)
                .resizable()
                .frame(width: 42, height: 42)
                .clipShape(Circle())
            
            ChatBubbleView(text: text)
            
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(person: "lando", text: "This is a test message to show the functionality")
            .previewLayout(.fixed(width: 350, height: 150.0))
        
        MessageView(person: "lando", text: "This is a test message to show the functionality")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 350, height: 150.0))
    }
}

//
//  ChatBubbleView.swift
//  AnimatedMessageReactions
//
//  Created by Stefan Blos on 14.12.21.
//

import SwiftUI

struct ChatBubbleView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .padding()
            .background(Color(UIColor.tertiarySystemGroupedBackground))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

struct ChatBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubbleView(text: "Here we have a new message coming in.")
            .previewLayout(.fixed(width: 300, height: 100.0))
        
        ChatBubbleView(text: "Here we have a new message coming in.")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 300, height: 100.0))
        
        
    }
}

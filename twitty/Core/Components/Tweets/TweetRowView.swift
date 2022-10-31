//
//  TweetRowView.swift
//  twitty
//
//  Created by BekRoz on 31/10/22.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                UserImage()
                VStack(alignment: .leading, spacing: 4) {
                    UserInfo()
                    TweetCaption()
                }
                
            }
            ReactionButtonsContainer()
                .padding()
                .foregroundColor(.gray)
            Divider()
        }
        
    }
}

struct UserImage: View {
    var body: some View {
        Circle()
            .frame(width: 56, height: 56)
            .foregroundColor(Color(.systemBlue))
    }
}

struct UserInfo: View {
    var body: some View {
        HStack {
            Text("Bruce Wayne")
                .font(.subheadline).bold()
            Text("@batman")
                .foregroundColor(.gray)
                .font(.caption)
            Text("2w")
                .foregroundColor(.gray)
                .font(.caption)

        }
    }
}

struct TweetCaption: View {
    var body: some View {
        Text("I believe in Harvey Dent")
            .font(.subheadline)
            .multilineTextAlignment(.leading)
    }
}

struct ReactionButtonsContainer: View {
    var body: some View {
        HStack {
            ReactionButton(image: "bubble.left")
            Spacer()
            ReactionButton(image: "arrow.2.squarepath")
            Spacer()
            ReactionButton(image: "heart")
            Spacer()
            ReactionButton(image: "bookmark")
        }
    }
}

struct ReactionButton: View {
    var image: String
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: image)
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}

//
//  Header.swift
//  DailyChallange
//
//  Created by Julia Morozova on 26. 2. 2026..
//
import SwiftUI

struct Header: View {
    let fontSize = 28.0
        let lineHeightRatio: CGFloat = 1.4
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Welcome Back")
                    .dnsans(.regular, 16)
                    .foregroundColor(.appTextGrey)
                Text("Willy Draw")
                    .dnsans(.medium, fontSize)
            }
            Spacer()
            Image(systemName: "bell.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 18, height: 20)
                .foregroundColor(.white)
                .padding(15)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        .padding(.horizontal, 16)
    }
}

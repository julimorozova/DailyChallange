//
//  RecommendationView.swift
//  DailyChallange
//
//  Created by Julia Morozova on 26. 2. 2026..
//

import SwiftUI

struct RecommendationView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 23) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Daily \nChallange")
                    .dnsans(.medium, 32)
                    .foregroundColor(.white)
                Text("Don't let today's \nchallenge slip away!")
                    .dnsans(.regular, 16)
                    .foregroundColor(.white)
            }

            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 7) {
                    Text("Take the Challanges")
                        .dnsans(.medium, 14)
                        .foregroundColor(.white)
                    HStack(spacing: 7) {
                        HStack(spacing: 5) {
                            Image(systemName: "clock")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 17, height: 17)
                                .foregroundColor(.white)
                            Text("20 min")
                                .dnsans(.regular, 12)
                                .foregroundColor(.white)
                        }

                        HStack(spacing: 5) {
                            Image(systemName: "ticket")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 17, height: 17)
                                .foregroundColor(.white)
                            Text("100 points")
                                .dnsans(.regular, 12)
                                .foregroundColor(.white)
                        }
                    }
                }
                Spacer()

                Button {
                    //
                } label: {
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .foregroundColor(.white)
                }
                .frame(width: 44, height: 44)

            }
            .padding([.top, .bottom], 13)
            .padding([.leading, .trailing], 16)
            .background(Color.white.opacity(0.15))
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding(.all, 25)
        .frame(minHeight: 286)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.appBlue)
        .clipShape(RoundedRectangle(cornerRadius: 32))
        .padding(.horizontal, 16)
    }
}

//
//  ContentView.swift
//  DailyChallange
//
//  Created by Julia Morozova on 25. 2. 2026..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Header()
                RecommendationView()
                CategoryListView()
                WorkoutPlanListView()
                Spacer()
            }
            .padding(.top, 40)
        }
    }
}


#Preview {
    ContentView()
}

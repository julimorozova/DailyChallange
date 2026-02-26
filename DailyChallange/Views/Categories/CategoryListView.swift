//
//  CategoryListView.swift
//  DailyChallange
//
//  Created by Julia Morozova on 26. 2. 2026..
//
import SwiftUI

struct CategoryListView: View {
    var categories: [Category] = MockData.getCategories()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(categories) {category in
                    CategoryCardView(category: category)
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

private struct CategoryCardView: View {
    var category: Category
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            ZStack {
                Image(category.imageName)
            }
            .frame(width: 87, height: 84)
            .background(.appLightBlue)
            .clipShape(RoundedRectangle(cornerRadius: 24))

            Text(category.title)
                .dnsans(.regular, 16)
        }
    }
}

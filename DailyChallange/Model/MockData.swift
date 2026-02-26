//
//  MockData.swift
//  DailyChallange
//
//  Created by Julia Morozova on 25. 2. 2026..
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

struct WorkoutPlan: Identifiable {
    let id = UUID()
    let title: String
    let durationDays: Int
    let minutesPerDay: Int
    let imageName: String
}

struct MockData {

    static func getCategories() -> [Category] {
        return [
            Category(title: "Strength", imageName: "strength_icon"),
            Category(title: "Flexible", imageName: "flexible_icon"),
            Category(title: "Cardio", imageName: "cardio_icon"),
            Category(title: "Balance", imageName: "balance_icon")
        ]
    }

    static func getWorkoutPlans() -> [WorkoutPlan] {
        return [
            WorkoutPlan(
                title: "Simple Home Workout",
                durationDays: 30,
                minutesPerDay: 15,
                imageName: "home_workout_bg"
            ),
            WorkoutPlan(
                title: "Upper Body Builder",
                durationDays: 15,
                minutesPerDay: 20,
                imageName: "upper_body_bg"
            ),
            WorkoutPlan(
                title: "Yoga & Mind",
                durationDays: 20,
                minutesPerDay: 30,
                imageName: "home_workout_bg"
            )
        ]
    }
}

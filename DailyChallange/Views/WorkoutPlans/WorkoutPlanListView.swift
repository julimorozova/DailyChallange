//
//  WorkoutPlanListView.swift
//  DailyChallange
//
//  Created by Julia Morozova on 26. 2. 2026..
//
import SwiftUI

struct WorkoutPlanListView: View {

    var workoutPlans: [WorkoutPlan] = MockData.getWorkoutPlans()

    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Popular Workout Plans")
                    .dnsans(.medium, 18)

                Spacer()

                Button {
                    //
                } label: {
                    Text("See All")
                        .dnsans(.regular, 16)
                        .foregroundColor(.appTextGrey)
                }

            }
            .padding(.horizontal, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(workoutPlans) {plan in
                        WorkoutPlanView(plan: plan)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

private struct WorkoutPlanView: View {
    var plan: WorkoutPlan
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(plan.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)

            LinearGradient(
                    gradient: Gradient(colors: [.black.opacity(0.7), .clear]),
                    startPoint: .bottom,
                    endPoint: .center
                )
                .clipShape(RoundedRectangle(cornerRadius: 21))

            VStack(alignment: .trailing, spacing: 5) {
                Text(plan.title)
                    .dnsans(.medium, 24)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.trailing)
                    .lineLimit(3)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 110, alignment: .trailing)

                VStack(alignment: .trailing, spacing: 4) {
                    HStack(spacing: 8) {
                        Text("\(plan.durationDays) days")
                            .dnsans(.regular, 12)
                            .foregroundColor(.white)

                        Image(systemName: "calendar")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                    }
                    HStack(spacing: 8) {
                        Text("\(plan.minutesPerDay) min/day")
                            .dnsans(.regular, 12)
                            .foregroundColor(.white)
                        Image(systemName: "clock")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(.top, 32)
            .padding(.horizontal, 12)

            Button(action: {
                //
            }) {
                HStack {
                    Image(systemName: "play.fill")
                    Text("Start Now")
                        .dnsans(.regular, 14)
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 20)
                .background(.white.opacity(0.2))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(.horizontal, 12)
            .padding(.bottom, 12)
        }
        .frame(width: 162, height: 232)
        .clipShape(RoundedRectangle(cornerRadius: 21))
        .clipped()
    }
}

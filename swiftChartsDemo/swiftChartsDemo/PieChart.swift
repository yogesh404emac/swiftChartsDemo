//
//  PieChart.swift
//  swiftChartsDemo
//
//  Created by Yogesh on 14/01/24.
//

import SwiftUI
import Charts

struct PieChart: View {
        var body: some View {
            VStack {
                Chart(StateData.data, id: \.IDState) {stateInfo in
                    SectorMark(angle: .value("population", stateInfo.population),
                                      innerRadius: .ratio(0.5),
                                      angularInset: 1.5)
                               .cornerRadius(5)
                               .foregroundStyle(by: .value("year", stateInfo.year))
                               .opacity(stateInfo.population == 500 ? 1 : 0.5)
                               .foregroundStyle(.black)
                       }
                .frame(height: 200)
            }
            }
    }


#Preview {
    PieChart()
}

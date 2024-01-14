//
//  PointCharts.swift
//  swiftChartsDemo
//
//  Created by Yogesh on 14/01/24.
//

import SwiftUI
import Charts

struct PointCharts: View {
    @State private var averageIsPopulation = false
    var body: some View {
        VStack {
            Chart{
                ForEach(StateData.data, id: \.IDState) { stateInfo in
                    PointMark(x: PlottableValue.value("state", stateInfo.state), y: PlottableValue.value("population", stateInfo.population))
                        .annotation (position:.overlay){
                            Text(String(stateInfo.population)).foregroundColor(.white)
                        }
                        .foregroundStyle(by:.value("year", stateInfo.year))
                       
                }
                if averageIsPopulation {
                    RuleMark(y: .value("Average", 4000))
                        .foregroundStyle(.gray)
                        .annotation (position: .bottom,alignment: .bottomLeading){
                            Text("Average populations")
                        }
                    
                }
            }
            .chartYScale(range: .plotDimension(padding: 60))
            .aspectRatio(1, contentMode: .fit)
            
            Toggle(averageIsPopulation ? "show average" : "hide average", isOn: $averageIsPopulation.animation())
        }
        .padding()
    }
}

#Preview {
    PointCharts()
}

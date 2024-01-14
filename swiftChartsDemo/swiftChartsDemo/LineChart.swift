//
//  LineChart.swift
//  swiftChartsDemo
//
//  Created by Yogesh on 14/01/24.
//

import SwiftUI
import Charts

struct LineChart: View {
    @State private var averageIsPopulation = false
    
    var body: some View {
        VStack {
            Chart{
                ForEach(StateData.data, id: \.IDState) { stateInfo in
                    LineMark(x: PlottableValue.value("state", stateInfo.state), y: PlottableValue.value("population", stateInfo.population))
                        .annotation (position:.overlay){
                            Text(String(stateInfo.population)).foregroundColor(.white)
                        }
                        .foregroundStyle(by:.value("year", stateInfo.year))
                        .symbol(by: .value("year points", stateInfo.year))
                       
                }
              
            }
            .chartYScale(range: .plotDimension(padding: 60))
            .aspectRatio(1, contentMode: .fit)
        }
        .padding()
    }
}

#Preview {
    LineChart()
}

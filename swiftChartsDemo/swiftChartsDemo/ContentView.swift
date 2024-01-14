//
//  ContentView.swift
//  swiftChartsDemo
//
//  Created by Yogesh on 14/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                TabView {
                    BarChart()
                        .tabItem {
                            Label("BarChart", systemImage: "chart.bar.xaxis.ascending")
                        }
                    
                    LineChart()
                        .tabItem {
                            Label("LineChart", systemImage: "chart.xyaxis.line")
                        }
                    PieChart()
                        .tabItem {
                            Label("PieChart", systemImage: "chart.pie.fill")
                        }
                    PointCharts()
                        .tabItem {
                            Label("Two", systemImage: "chart.dots.scatter")
                        }
                }
            }
            .navigationTitle("Population state year")
        }
    }
}

#Preview {
    ContentView()
}

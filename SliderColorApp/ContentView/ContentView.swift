//
//  ContentView.swift
//  SliderColorApp
//
//  Created by Даниил Торопов on 17.12.2023.
//

import SwiftUI

struct ContentView: View {
	@State private var redSliderValue = Double.random(in: 0...255)
	@State private var greenSliderValue = Double.random(in: 0...255)
	@State private var blueSliderValue = Double.random(in: 0...255)
	
	var body: some View {
		ZStack {
			Color.gray
				.ignoresSafeArea()
			
			VStack {
				RoundedRectangleView(
					redValue: $redSliderValue,
					greenValue: $greenSliderValue,
					blueValue: $blueSliderValue
				)
					.padding()
				
				SliderColorView(value: $redSliderValue, color: .red)
				SliderColorView(value: $greenSliderValue, color: .green)
				SliderColorView(value: $blueSliderValue, color: .blue)
				
				Spacer()
			}
			.padding()
		}
	}
}

#Preview {
	ContentView()
}

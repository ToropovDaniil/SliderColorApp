//
//  SliderColorView.swift
//  SliderColorApp
//
//  Created by Даниил Торопов on 17.12.2023.
//

import SwiftUI

struct SliderColorView: View {
	@Binding var value: Double
	let color: Color
	
	var body: some View {
		Slider(value: $value, in: 0...255, step: 1) {
			Text("Value")
		} minimumValueLabel: {
			Text("\(Int(value))")
				.foregroundStyle(.white)
		} maximumValueLabel: {
			Text("255")
				.foregroundStyle(.white)
		}
		.tint(color)
	}
}

#Preview {
	SliderColorView(value: .constant(0.0), color: .red)
}

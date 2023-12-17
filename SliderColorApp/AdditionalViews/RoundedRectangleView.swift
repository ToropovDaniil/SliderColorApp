//
//  RoundedRectangleView.swift
//  SliderColorApp
//
//  Created by Даниил Торопов on 18.12.2023.
//

import SwiftUI

struct RoundedRectangleView: View {
	@Binding var redValue: Double
	@Binding var greenValue: Double
	@Binding var blueValue: Double
	
	var body: some View {
		VStack {
			RoundedRectangle(cornerRadius: 20)
				.frame(width: 350, height: 150)
				.foregroundStyle(Color(
					red: redValue/255,
					green: greenValue/255,
					blue: blueValue/255))
				.overlay (
					RoundedRectangle(cornerRadius: 20)
						.stroke(Color.white, lineWidth: 2)
			)
		}
	}
}

#Preview {
	RoundedRectangleView(
		redValue: .constant(1),
		greenValue: .constant(2),
		blueValue: .constant(3))
}

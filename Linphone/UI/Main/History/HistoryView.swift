/*
 * Copyright (c) 2010-2023 Belledonne Communications SARL.
 *
 * This file is part of Linphone
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

import SwiftUI

struct HistoryView: View {
	
	var body: some View {
		NavigationView {
			VStack(spacing: 0) {
				HStack {
					Image("profile-image-example")
						.resizable()
						.frame(width: 40, height: 40)
						.clipShape(Circle())
					
					Text("Calls")
						.default_text_style_white_800(styleSize: 20)
						.padding(.leading, 10)
					
					Spacer()
					
					Button {
						
					} label: {
						Image("search")
					}
					
					Button {
						
					} label: {
						Image("more")
					}
					.padding(.leading)
				}
				.frame(maxWidth: .infinity)
				.frame(height: 50)
				.padding(.horizontal)
				.background(Color.orangeMain500)
				
				VStack {
					Spacer()
					Image("illus-belledonne1")
						.resizable()
						.scaledToFit()
						.clipped()
						.padding(.all)
					Text("No calls for the moment...")
						.default_text_style_800(styleSize: 16)
					Spacer()
					Spacer()
				}
				.padding(.all)
			}
		}
		.navigationViewStyle(.stack)
	}
}

#Preview {
	HistoryView()
}

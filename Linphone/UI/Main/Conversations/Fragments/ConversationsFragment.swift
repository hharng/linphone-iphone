/*
 * Copyright (c) 2010-2023 Belledonne Communications SARL.
 *
 * This file is part of linphone-iphone
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

struct ConversationsFragment: View {
	
	@ObservedObject var conversationsListViewModel: ConversationsListViewModel
	@ObservedObject var conversationViewModel: ConversationViewModel
	
	private var idiom: UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
	
	@State var showingSheet: Bool = false
	
	var body: some View {
		ZStack {
			if #available(iOS 16.0, *), idiom != .pad {
				ConversationsListFragment(conversationsListViewModel: conversationsListViewModel, conversationViewModel: conversationViewModel,showingSheet: $showingSheet)
					.sheet(isPresented: $showingSheet) {
						ConversationsListBottomSheet(
							showingSheet: $showingSheet
						)
						.presentationDetents([.fraction(0.4)])
					}
			} else {
				ConversationsListFragment(conversationsListViewModel: conversationsListViewModel, conversationViewModel: conversationViewModel,showingSheet: $showingSheet)
					.halfSheet(showSheet: $showingSheet) {
						ConversationsListBottomSheet(
							showingSheet: $showingSheet
						)
					} onDismiss: {}
			}
		}
	}
}

#Preview {
	ConversationsFragment(conversationsListViewModel: ConversationsListViewModel(), conversationViewModel: ConversationViewModel())
}

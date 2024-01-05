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

import Foundation
import linphonesw
import Combine

class ContactAvatarModel: ObservableObject {
	
	let friend: Friend?
	
	let withPresence: Bool?

	@Published var lastPresenceInfo: String

	@Published var presenceStatus: ConsolidatedPresence
	
	private var friendSuscription: AnyCancellable?
	
	init(friend: Friend?, withPresence: Bool?) {
		self.friend = friend
		self.withPresence = withPresence
        if friend != nil &&
			withPresence == true {
			self.lastPresenceInfo = ""
			
			self.presenceStatus = friend!.consolidatedPresence
			
			if friend!.consolidatedPresence == .Online || friend!.consolidatedPresence == .Busy {
				if friend!.consolidatedPresence == .Online || friend!.presenceModel!.latestActivityTimestamp != -1 {
					self.lastPresenceInfo = friend!.consolidatedPresence == .Online ? "Online" : getCallTime(startDate: friend!.presenceModel!.latestActivityTimestamp)
				} else {
					self.lastPresenceInfo = "Away"
				}
			} else {
				self.lastPresenceInfo = ""
			}
            
            if self.friendSuscription != nil {
                self.friendSuscription = nil
            }
			
			addSubscription()
        } else {
            self.lastPresenceInfo = ""
            self.presenceStatus = .Offline
        }
	}
	
	func addSubscription() {
		
		friendSuscription = self.friend?.publisher?.onPresenceReceived?.postOnMainQueue { (cbValue: (Friend)) in
			print("publisherpublisher onLogCollectionUploadStateChanged \(cbValue.address?.asStringUriOnly() ?? "")")
			
			self.presenceStatus = cbValue.consolidatedPresence
			if cbValue.consolidatedPresence == .Online || cbValue.consolidatedPresence == .Busy {
				if cbValue.consolidatedPresence == .Online || cbValue.presenceModel!.latestActivityTimestamp != -1 {
					self.lastPresenceInfo = cbValue.consolidatedPresence == .Online ? "Online" : self.getCallTime(startDate: cbValue.presenceModel!.latestActivityTimestamp)
				} else {
					self.lastPresenceInfo = "Away"
				}
			} else {
				self.lastPresenceInfo = ""
			}
		}
	}
	
	func removeAllSuscription() {
		if friendSuscription != nil {
			presenceStatus = .Offline
			friendSuscription = nil
		}
	}
	
	func getCallTime(startDate: time_t) -> String {
		let timeInterval = TimeInterval(startDate)
		
		let myNSDate = Date(timeIntervalSince1970: timeInterval)
		
		if Calendar.current.isDateInToday(myNSDate) {
			let formatter = DateFormatter()
			formatter.dateFormat = Locale.current.identifier == "fr_FR" ? "HH:mm" : "h:mm a"
			return "Online today at " + formatter.string(from: myNSDate)
		} else if Calendar.current.isDateInYesterday(myNSDate) {
			let formatter = DateFormatter()
			formatter.dateFormat = Locale.current.identifier == "fr_FR" ? "HH:mm" : "h:mm a"
			return "Online yesterday at " + formatter.string(from: myNSDate)
		} else if Calendar.current.isDate(myNSDate, equalTo: .now, toGranularity: .year) {
			let formatter = DateFormatter()
			formatter.dateFormat = Locale.current.identifier == "fr_FR" ? "dd/MM | HH:mm" : "MM/dd | h:mm a"
			return "Online on " + formatter.string(from: myNSDate)
		} else {
			let formatter = DateFormatter()
			formatter.dateFormat = Locale.current.identifier == "fr_FR" ? "dd/MM/yy | HH:mm" : "MM/dd/yy | h:mm a"
			return "Online on " + formatter.string(from: myNSDate)
		}
	}
}

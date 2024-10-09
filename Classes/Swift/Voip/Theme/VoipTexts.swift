/*
 * Copyright (c) 2010-2020 Belledonne Communications SARL.
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

import Foundation
import UIKit

@objc class VoipTexts : NSObject { // From android key names. Added intentionnally with NSLocalizedString calls for each key, so it can be picked up by translation system (Weblate or Xcode).
	
	static let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as! String
	
	// FROM ANDROID START (check script scripts/android_import.sh for details)
	@objc static let call_action_add_call = NSLocalizedString("Start new call",comment:"")
	@objc static let call_action_calls_list = NSLocalizedString("Calls list",comment:"")
	@objc static let call_action_change_conf_layout = NSLocalizedString("Change layout",comment:"")
	@objc static let call_action_chat = NSLocalizedString("Chat",comment:"")
	@objc static let call_action_numpad = NSLocalizedString("Numpad",comment:"")
	@objc static let call_action_speakers_list = NSLocalizedString("Speakers list",comment:"")
	@objc static let call_action_participants_list = NSLocalizedString("Participants list",comment:"")
	@objc static let call_action_statistics = NSLocalizedString("Call statistics",comment:"")
	@objc static let call_action_transfer_call = NSLocalizedString("Transfer call",comment:"")
	@objc static let call_context_action_answer = NSLocalizedString("Answer call",comment:"")
	@objc static let call_context_action_hangup = NSLocalizedString("Terminate call",comment:"")
	@objc static let call_context_action_pause = NSLocalizedString("Pause call",comment:"")
	@objc static let call_context_action_resume = NSLocalizedString("Resume call",comment:"")
	@objc static let call_context_action_transfer = NSLocalizedString("Transfer call",comment:"")
	@objc static let call_context_action_attended_transfer = NSLocalizedString("Attended transfer",comment:"")
	@objc static let call_error_declined = NSLocalizedString("Call has been declined",comment:"")
	@objc static let call_error_generic = NSLocalizedString("Error: %s",comment:"")
	@objc static let call_error_incompatible_media_params = NSLocalizedString("Incompatible media parameters",comment:"")
	@objc static let call_error_io_error = NSLocalizedString("Service unavailable or network error",comment:"")
	@objc static let call_error_network_unreachable = NSLocalizedString("Network is unreachable",comment:"")
	@objc static let call_error_server_timeout = NSLocalizedString("Server timeout",comment:"")
	@objc static let call_error_temporarily_unavailable = NSLocalizedString("Temporarily unavailable",comment:"")
	@objc static let call_error_user_busy = NSLocalizedString("User is busy",comment:"")
	@objc static let call_error_user_not_found = NSLocalizedString("User hasn't been found",comment:"")
	@objc static let call_incoming_title = NSLocalizedString("Incoming Call",comment:"")
	@objc static let call_locally_paused_subtitle = NSLocalizedString("Click on play button to resume it.",comment:"")
	@objc static let call_locally_paused_title = NSLocalizedString("You have paused the call.",comment:"")
	@objc static let call_notification_active = NSLocalizedString("Call running",comment:"")
	@objc static let call_notification_outgoing = NSLocalizedString("Outgoing call",comment:"")
	@objc static let call_notification_paused = NSLocalizedString("Paused call",comment:"")
	@objc static let call_outgoing_title = NSLocalizedString("Outgoing Call",comment:"")
	@objc static let call_remote_recording = NSLocalizedString("This call is being recorded.",comment:"")
	@objc static let call_remotely_paused_title = NSLocalizedString("Call has been paused by remote.",comment:"")
	@objc static let call_stats_audio = NSLocalizedString("Audio",comment:"")
	@objc static let call_stats_capture_filter = NSLocalizedString("Capture filter:",comment:"")
	@objc static let call_stats_codec = NSLocalizedString("Codec:",comment:"")
	@objc static let call_stats_decoder_name = NSLocalizedString("Decoder:",comment:"")
	@objc static let call_stats_download = NSLocalizedString("Download bandwidth:",comment:"")
	@objc static let call_stats_encoder_name = NSLocalizedString("Encoder:",comment:"")
	@objc static let call_stats_estimated_download = NSLocalizedString("Estimated download bandwidth:",comment:"")
	@objc static let call_stats_ice = NSLocalizedString("ICE connectivity:",comment:"")
	@objc static let call_stats_ip = NSLocalizedString("IP Family:",comment:"")
	@objc static let call_stats_jitter_buffer = NSLocalizedString("Jitter buffer:",comment:"")
	@objc static let call_stats_player_filter = NSLocalizedString("Player filter:",comment:"")
	@objc static let call_stats_receiver_loss_rate = NSLocalizedString("Receiver loss rate:",comment:"")
	@objc static let call_stats_sender_loss_rate = NSLocalizedString("Sender loss rate:",comment:"")
	@objc static let call_stats_upload = NSLocalizedString("Upload bandwidth:",comment:"")
	@objc static let call_stats_video = NSLocalizedString("Video",comment:"")
	@objc static let call_stats_video_fps_received = NSLocalizedString("Received video fps:",comment:"")
	@objc static let call_stats_video_fps_sent = NSLocalizedString("Sent video fps:",comment:"")
	@objc static let call_stats_video_resolution_received = NSLocalizedString("Received video resolution:",comment:"")
	@objc static let call_stats_video_resolution_sent = NSLocalizedString("Sent video resolution:",comment:"")
	@objc static let call_video_update_requested_dialog = NSLocalizedString("Correspondent would like to turn the video on",comment:"")
	@objc static let cancel = NSLocalizedString("Cancel",comment:"")
	@objc static let chat_room_group_info_admin = NSLocalizedString("Admin",comment:"")
	@objc static let chat_room_group_info_speaker = NSLocalizedString("Speaker",comment:"")
	@objc static let conference_creation_failed = NSLocalizedString("Failed to create meeting",comment:"")
	@objc static let conference_default_title = NSLocalizedString("Remote group call",comment:"")
	@objc static let conference_description_title = NSLocalizedString("Description",comment:"")
	@objc static let conference_display_mode_active_speaker = NSLocalizedString("Active speaker mode",comment:"")
	@objc static let conference_display_mode_audio_only = NSLocalizedString("Audio only mode",comment:"")
	@objc static let conference_display_mode_mosaic = NSLocalizedString("Mosaic mode",comment:"")
	@objc static let conference_first_to_join = NSLocalizedString("You're the first to join the group call",comment:"")
	@objc static let conference_go_to_chat = NSLocalizedString("Meeting's chat room",comment:"")
	@objc static let conference_group_call_create = NSLocalizedString("Start group call",comment:"")
	@objc static let conference_group_call_title = NSLocalizedString("Start a group call",comment:"")
	@objc static let conference_incoming_title = NSLocalizedString("Incoming group call",comment:"")
	@objc static let conference_info_confirm_removal = NSLocalizedString("Do you really want to delete this meeting?",comment:"")
	@objc static let conference_infos_confirm_removal = NSLocalizedString("Do you really want to delete these meetings?",comment:"")
	@objc static let conference_info_removed = NSLocalizedString("Meeting info has been deleted",comment:"")
	@objc static let conference_infos_removed = NSLocalizedString("Meeting infos have been deleted",comment:"")

	@objc static let conference_invite_join = NSLocalizedString("Join",comment:"")
	@objc static let conference_invite_participants_count = NSLocalizedString("%d participants",comment:"")
	@objc static let conference_invite_title = NSLocalizedString("Meeting invite:",comment:"")
	@objc static let conference_update_title = NSLocalizedString("Meeting has been updated:",comment:"")
	@objc static let conference_cancel_title = NSLocalizedString("Meeting has been cancelled:",comment:"")
	@objc static let conference_invite_broadcast_title = NSLocalizedString("Broadcast invite:",comment:"")
	@objc static let conference_update_broadcast_title = NSLocalizedString("Broadcast has been updated:",comment:"")
	@objc static let conference_cancel_broadcast_title = NSLocalizedString("Broadcast has been cancelled:",comment:"")
	@objc static let conference_last_user = NSLocalizedString("All other participants have left the group call",comment:"")
	@objc static let conference_local_title = NSLocalizedString("Local group call",comment:"")
	@objc static let conference_no_schedule = NSLocalizedString("No scheduled meeting yet.",comment:"")
	@objc static let conference_no_terminated_schedule = NSLocalizedString("No terminated meeting yet.",comment:"")	
	@objc static let conference_participant_paused = NSLocalizedString("(paused)",comment:"")
	@objc static let conference_participants_title = NSLocalizedString("Participants (%d)",comment:"")
	@objc static let conference_paused_subtitle = NSLocalizedString("Click on play button to join it back.",comment:"")
	@objc static let conference_paused_title = NSLocalizedString("You are currently out of the meeting.",comment:"")
	@objc static let conference_schedule_address_copied_to_clipboard = NSLocalizedString("Meeting address copied into clipboard",comment:"")
	@objc static let conference_schedule_address_title = NSLocalizedString("Meeting address",comment:"")
	@objc static let conference_schedule_address_broadcast_copied_to_clipboard = NSLocalizedString("Broadcast address copied into clipboard",comment:"")
	@objc static let conference_schedule_address_broadcast_title = NSLocalizedString("Broadcast address",comment:"")
	@objc static let conference_schedule_mode = NSLocalizedString("Mode",comment:"")
	@objc static let conference_schedule_date = NSLocalizedString("Date",comment:"")
	@objc static let conference_schedule_description_hint = NSLocalizedString("Description",comment:"")
	@objc static let conference_schedule_description_title = NSLocalizedString("Add a description",comment:"")
	@objc static let conference_schedule_duration = NSLocalizedString("Duration",comment:"")
	@objc static let conference_schedule_encryption = NSLocalizedString("Would you like to encrypt the meeting?",comment:"")
	@objc static let conference_schedule_info_created = NSLocalizedString("Meeting has been scheduled",comment:"")
	@objc static let conference_schedule_info_not_sent_to_participant = NSLocalizedString("Failed to send meeting info to a participant",comment:"")
	@objc static let conference_schedule_later = NSLocalizedString("Do you want to schedule a meeting for later?",comment:"")
	@objc static let conference_schedule_mandatory_field = NSLocalizedString("Mandatory",comment:"")
	@objc static let conference_schedule_organizer = NSLocalizedString("Organizer:",comment:"")
	@objc static let conference_schedule_participants_list = NSLocalizedString("Participants list",comment:"")
	@objc static let conference_schedule_speakers_list = NSLocalizedString("Speakers list",comment:"")
	@objc static let conference_schedule_speakers_list_empty = NSLocalizedString("Select at least one speaker",comment:"")
	@objc static let conference_schedule_participants_list_empty = NSLocalizedString("Select at least one participant",comment:"")
	@objc static let conference_schedule_send_invite_chat = NSLocalizedString("Send invite via &appName;",comment:"").replacingOccurrences(of: "&appName;", with: appName)
	@objc static let conference_schedule_send_invite_chat_summary = NSLocalizedString("Invite will be sent out from my &appName; account",comment:"").replacingOccurrences(of: "&appName;", with: appName)
	@objc static let conference_schedule_send_invite_email = NSLocalizedString("Send invite via email",comment:"")
	@objc static let conference_schedule_start = NSLocalizedString("Schedule",comment:"")
	@objc static let conference_schedule_edit = NSLocalizedString("Edit",comment:"")
	@objc static let conference_schedule_subject_hint = NSLocalizedString("Meeting subject",comment:"")
	@objc static let conference_group_call_subject_hint = NSLocalizedString("Group call subject",comment:"")
	@objc static let conference_schedule_subject_title = NSLocalizedString("Subject",comment:"")
	@objc static let conference_schedule_summary = NSLocalizedString("Meeting info",comment:"")
	@objc static let conference_schedule_broadcast_summary = NSLocalizedString("Broadcast info",comment:"")
	@objc static let conference_schedule_time = NSLocalizedString("Time",comment:"")
	@objc static let conference_schedule_timezone = NSLocalizedString("Timezone",comment:"")
	@objc static let conference_schedule_title = NSLocalizedString("Schedule a meeting",comment:"")
	@objc static let conference_scheduled = NSLocalizedString("Meetings",comment:"")
	@objc static let conference_start_group_call_dialog_message = NSLocalizedString("Do you want to start a group call?\nEveryone in this group will receive a call to join the meeting.",comment:"")
	@objc static let conference_start_group_call_dialog_ok_button = NSLocalizedString("Start",comment:"")
	@objc static let conference_too_many_participants_for_mosaic_layout = NSLocalizedString("There is too many participants for mosaic layout, switching to active speaker",comment:"")
	@objc static let conference_waiting_room_cancel_call = NSLocalizedString("Cancel",comment:"")
	@objc static let conference_waiting_room_start_call = NSLocalizedString("Start",comment:"")
	@objc static let conference_waiting_room_video_disabled = NSLocalizedString("Video is currently disabled",comment:"")
	@objc static let dialog_accept = NSLocalizedString("Accept",comment:"")
	@objc static let dialog_decline = NSLocalizedString("Decline",comment:"")
	@objc static let conference_empty = NSLocalizedString("You are currently alone in this group call",comment:"")
	@objc static let conference_admin_set = NSLocalizedString("%s is now admin",comment:"")
	@objc static let conference_admin_unset = NSLocalizedString("%s is no longer admin",comment:"")
	@objc static let conference_scheduled_terminated_filter = NSLocalizedString("Terminated",comment:"")
	@objc static let conference_scheduled_future_filter = NSLocalizedString("Scheduled",comment:"")
	@objc static let conference_scheduled_cancelled_by_me = NSLocalizedString("You have cancelled the conference",comment:"")
	@objc static let conference_scheduled_cancelled_by_organizer = NSLocalizedString("Conference has been cancelled by organizer",comment:"")
	@objc static let conference_scheduled_title_meeting_cell = NSLocalizedString("Meeting: ",comment:"")
	@objc static let conference_scheduled_title_broadcast_cell = NSLocalizedString("Broadcast: ",comment:"")
	@objc static let conference_scheduled_title_participant_cell = NSLocalizedString("Participants",comment:"")
	@objc static let conference_scheduled_title_speakers_cell = NSLocalizedString("Speakers",comment:"")
	@objc static let conference_scheduled_title_guests_cell = NSLocalizedString("Guests",comment:"")
	@objc static let conference_you_are_speaker = NSLocalizedString("You're a speaker",comment:"")
	@objc static let conference_you_are_listener = NSLocalizedString("You're a listener",comment:"")
	@objc static let conference_no_speaker = NSLocalizedString("No speaker has joined the meeting yet",comment:"")
	
	@objc static let image_picker_view_alert_action_title = NSLocalizedString("Select the source",comment:"")
	@objc static let image_picker_view_alert_action_camera = NSLocalizedString("Camera",comment:"")
	@objc static let image_picker_view_alert_action_photo_library = NSLocalizedString("Photo library",comment:"")
	@objc static let image_picker_view_alert_action_document = NSLocalizedString("Document",comment:"")
	@objc static let alert_dialog_secure_badge_button_chat_conversation_title = NSLocalizedString("Instant messages are end-to-end encrypted in secured conversations. It is possible to upgrade the security level of a conversation by authenticating participants. To do so, call the contact and follow the authentification process.",comment:"")
	@objc static let alert_dialog_secure_badge_button_chat_conversation_checkboxtext = NSLocalizedString("Do not show again",comment:"")
	@objc static let dropdown_menu_chat_conversation_go_to_contact = NSLocalizedString("Go to contact",comment:"")
	@objc static let dropdown_menu_chat_conversation_add_to_contact = NSLocalizedString("Add to contacts",comment:"")
	@objc static let dropdown_menu_chat_conversation_group_infos = NSLocalizedString("Group infos",comment:"")
	@objc static let dropdown_menu_chat_conversation_conversation_device = NSLocalizedString("Conversation's devices",comment:"")
	@objc static let dropdown_menu_chat_conversation_ephemeral_messages = NSLocalizedString("Ephemeral messages",comment:"")
	@objc static let dropdown_menu_chat_conversation_mute_notifications = NSLocalizedString("Mute notifications",comment:"")
	@objc static let dropdown_menu_chat_conversation_unmute_notifications = NSLocalizedString("Un-mute notifications",comment:"")
	@objc static let dropdown_menu_chat_conversation_delete_messages = NSLocalizedString("Delete messages",comment:"")
	@objc static let dropdown_menu_chat_conversation_debug_infos = NSLocalizedString("Debug infos",comment:"")
	@objc static let operation_in_progress_wait = NSLocalizedString("Operation in progress, please wait",comment:"")
	@objc static let bubble_chat_transferred = NSLocalizedString("Transferred",comment:"")
	@objc static let bubble_chat_reply = NSLocalizedString("Answer",comment:"")
    @objc static let bubble_chat_reply_message_does_not_exist = NSLocalizedString("Original message does not exist anymore.",comment:"")
	
	@objc static let bubble_chat_dropDown_emojis = NSLocalizedString("Emojis",comment:"")
	@objc static let bubble_chat_dropDown_resend = NSLocalizedString("Resend",comment:"")
	@objc static let bubble_chat_dropDown_copy_text = NSLocalizedString("Copy text",comment:"")
	@objc static let bubble_chat_dropDown_forward = NSLocalizedString("Forward",comment:"")
	@objc static let bubble_chat_dropDown_reply = NSLocalizedString("Reply",comment:"")
	@objc static let bubble_chat_dropDown_infos = NSLocalizedString("Delivery Status",comment:"")
	@objc static let bubble_chat_dropDown_add_to_contact = NSLocalizedString("Add to contacts",comment:"")
	@objc static let bubble_chat_dropDown_delete = NSLocalizedString("Delete",comment:"")
	
	@objc static let bubble_chat_event_message_new_subject = NSLocalizedString("New subject : %@",comment:"").replacingOccurrences(of: "%@", with: "")
	@objc static let bubble_chat_event_message_has_joined = NSLocalizedString("%@ has joined",comment:"").replacingOccurrences(of: "%@", with: "")
	@objc static let bubble_chat_event_message_has_left = NSLocalizedString("%@ has left",comment:"").replacingOccurrences(of: "%@", with: "")
	@objc static let bubble_chat_event_message_now_admin = NSLocalizedString("%@ is now an admin",comment:"").replacingOccurrences(of: "%@", with: "")
	@objc static let bubble_chat_event_message_no_longer_admin = NSLocalizedString("%@ is no longer an admin",comment:"").replacingOccurrences(of: "%@", with: "")
	@objc static let bubble_chat_event_message_left_group = NSLocalizedString("You have left the group",comment:"")
	@objc static let bubble_chat_event_message_joined_group = NSLocalizedString("You have joined the group",comment:"")
	@objc static let bubble_chat_event_message_disabled_ephemeral = NSLocalizedString("You disabled ephemeral messages",comment:"")
	@objc static let bubble_chat_event_message_enabled_ephemeral = NSLocalizedString("You enabled ephemeral messages: %@",comment:"").replacingOccurrences(of: ": %@", with: "")
	@objc static let bubble_chat_event_message_expiry_ephemeral = NSLocalizedString("Ephemeral messages expiry date: %@",comment:"").replacingOccurrences(of: "%@", with: "")
	
	@objc static let bubble_chat_event_message_ephemeral_disable = NSLocalizedString("Disabled",comment:"")
	@objc static let bubble_chat_event_message_ephemeral_one_minute = NSLocalizedString("1 minute",comment:"")
	@objc static let bubble_chat_event_message_ephemeral_one_hour = NSLocalizedString("1 hour",comment:"")
	@objc static let bubble_chat_event_message_ephemeral_one_day = NSLocalizedString("1 day",comment:"")
	@objc static let bubble_chat_event_message_ephemeral_three_days = NSLocalizedString("3 days",comment:"")
	@objc static let bubble_chat_event_message_ephemeral_one_week = NSLocalizedString("1 week",comment:"")
	@objc static let bubble_chat_event_message_ephemeral_unexpected_duration = NSLocalizedString("Unexpected duration",comment:"")
	
	@objc static let bubble_chat_event_message_security_level_decreased = NSLocalizedString("Security level decreased",comment:"")
	@objc static let bubble_chat_event_message_security_level_decreased_because = NSLocalizedString("Security level decreased because of %@",comment:"").replacingOccurrences(of: "%@", with: "")
	@objc static let bubble_chat_event_message_max_participant = NSLocalizedString("Max participant count exceeded",comment:"")
	@objc static let bubble_chat_event_message_max_participant_by = NSLocalizedString("Max participant count exceeded by %@",comment:"").replacingOccurrences(of: "%@", with: "")
	@objc static let bubble_chat_event_message_lime_changed = NSLocalizedString("LIME identity key changed",comment:"")
	@objc static let bubble_chat_event_message_lime_changed_for = NSLocalizedString("LIME identity key changed for %@",comment:"").replacingOccurrences(of: "%@", with: "")
	@objc static let bubble_chat_event_message_attack_detected = NSLocalizedString("Man-in-the-middle attack detected",comment:"")
	@objc static let bubble_chat_event_message_attack_detected_for = NSLocalizedString("Man-in-the-middle attack detected for %@",comment:"").replacingOccurrences(of: "%@", with: "")
    
    @objc static let bubble_chat_download_file = NSLocalizedString("Download",comment:"")
    
    @objc static let chat_room_presence_online = NSLocalizedString("Online",comment:"")
    @objc static let chat_room_presence_last_seen_online_today = NSLocalizedString("Online today at ",comment:"")
    @objc static let chat_room_presence_last_seen_online_yesterday = NSLocalizedString("Online yesterday at ",comment:"")
    @objc static let chat_room_presence_last_seen_online = NSLocalizedString("Online on ",comment:"")
    @objc static let chat_room_presence_away = NSLocalizedString("Away",comment:"")
	
	@objc static let chat_message_cant_open_file_in_app_dialog_title = NSLocalizedString("It seems we can't display the file",comment:"")
	@objc static let chat_message_cant_open_file_in_app_dialog_message = NSLocalizedString("Would you like to open it as text or export it (unencrypted) to a third party app if available?",comment:"")
	@objc static let chat_message_cant_open_file_in_app_dialog_export_button = NSLocalizedString("Export",comment:"")
	// FROM ANDROID END
	
	
	// Added in iOS
	static let camera_required_for_video = NSLocalizedString("Camera use is not Authorized for &appName;. This permission is required to activate Video.",comment:"").replacingOccurrences(of: "&appName;", with: appName)
	static let microphone_non_authorized_warning = NSLocalizedString("Warning : Microphone access is not Authorized for &appName;. To enable access, tap Settings and turn on Microphone, this will end your call",comment:"").replacingOccurrences(of: "&appName;", with: appName)
	static let system_app_settings = NSLocalizedString("SETTINGS",comment:"")
	static let conference_edit_error = NSLocalizedString("Unable to edit conference this time, date is invalid",comment:"")
	static let ok =  NSLocalizedString("ok",comment:"")
	static let conference_info_confirm_removal_delete = NSLocalizedString("DELETE",comment:"")
	static let conference_unable_to_share_via_calendar = NSLocalizedString("Unable to add event to calendar. Check permissions",comment:"")
	static let screenshot_restrictions = NSLocalizedString("Can't take a screenshot due to app restrictions", comment: "")
	
	
	@objc static let dialog_later = NSLocalizedString("Maybe later",comment:"")
	@objc static let dialog_privacy_policy = NSLocalizedString("Privacy policy",comment:"")
	@objc static let accept_rls_title = NSLocalizedString("Enable smart address book", comment:"")
	@objc static let accept_rls = NSLocalizedString("To improve your experience, we’ll store your contacts' phone numbers to show you which friends are using the app. Your data will be securely stored and only used according to our privacy policy.\n You can disable this at any time.",comment:"")

}

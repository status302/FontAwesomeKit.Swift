//  MIT License
//
//  Copyright (c) 2016 QiunCheng
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//  For more : http://fontawesome.io/cheatsheet/

import Foundation

public enum FontAwesomeType: unichar {

    case fa_500px = 0xf26e
    case fa_adjust = 0xf042
    case fa_adn = 0xf170
    case fa_align_center = 0xf037
    case fa_align_justify = 0xf039
    case fa_align_left = 0xf036
    case fa_align_right = 0xf038
    case fa_amazon = 0xf270
    case fa_ambulance = 0xf0f9
    case fa_american_sign_language_interpreting = 0xf2a3
    case fa_anchor = 0xf13d
    case fa_android = 0xf17b
    case fa_angellist = 0xf209
    case fa_angle_double_down = 0xf103
    case fa_angle_double_left = 0xf100
    case fa_angle_double_right = 0xf101
    case fa_angle_double_up = 0xf102
    case fa_angle_down = 0xf107
    case fa_angle_left = 0xf104
    case fa_angle_right = 0xf105
    case fa_angle_up = 0xf106
    case fa_apple = 0xf179
    case fa_archive = 0xf187
    case fa_area_chart = 0xf1fe
    case fa_arrow_circle_down = 0xf0ab
    case fa_arrow_circle_left = 0xf0a8
    case fa_arrow_circle_o_down = 0xf01a
    case fa_arrow_circle_o_left = 0xf190
    case fa_arrow_circle_o_right = 0xf18e
    case fa_arrow_circle_o_up = 0xf01b
    case fa_arrow_circle_right = 0xf0a9
    case fa_arrow_circle_up = 0xf0aa
    case fa_arrow_down = 0xf063
    case fa_arrow_left = 0xf060
    case fa_arrow_right = 0xf061
    case fa_arrow_up = 0xf062
    case fa_arrows = 0xf047
    case fa_arrows_alt = 0xf0b2
    case fa_arrows_h = 0xf07e
    case fa_arrows_v = 0xf07d

    case fa_assistive_listening_systems = 0xf2a2
    case fa_asterisk = 0xf069
    case fa_at = 0xf1fa
    case fa_audio_description = 0xf29e
    case fa_automobile = 0xf1b9
    case fa_backward = 0xf04a
    case fa_balance_scale = 0xf24e
    case fa_ban = 0xf05e
    case fa_bank = 0xf19c

    case fa_bar_chart_o = 0xf080
    case fa_barcode = 0xf02a
    case fa_bars = 0xf0c9

    case fa_battery_empty = 0xf244
    case fa_battery_full = 0xf240
    case fa_battery_half = 0xf242
    case fa_battery_quarter = 0xf243
    case fa_battery_three_quarters = 0xf241
    case fa_bed = 0xf236
    case fa_beer = 0xf0fc
    case fa_behance = 0xf1b4
    case fa_behance_square = 0xf1b5
    case fa_bell = 0xf0f3
    case fa_bell_o = 0xf0a2
    case fa_bell_slash = 0xf1f6
    case fa_bell_slash_o = 0xf1f7
    case fa_bicycle = 0xf206
    case fa_binoculars = 0xf1e5
    case fa_birthday_cake = 0xf1fd
    case fa_bitbucket = 0xf171
    case fa_bitbucket_square = 0xf172
    case fa_bitcoin = 0xf15a
    case fa_black_tie = 0xf27e
    case fa_blind = 0xf29d
    case fa_bluetooth = 0xf293
    case fa_bluetooth_b = 0xf294
    case fa_bold = 0xf032
    case fa_bolt = 0xf0e7
    case fa_bomb = 0xf1e2
    case fa_book = 0xf02d
    case fa_bookmark = 0xf02e
    case fa_bookmark_o = 0xf097
    case fa_braille = 0xf2a1
    case fa_briefcase = 0xf0b1

    case fa_bug = 0xf188
    case fa_building = 0xf1ad
    case fa_building_o = 0xf0f7
    case fa_bullhorn = 0xf0a1
    case fa_bullseye = 0xf140
    case fa_bus = 0xf207
    case fa_buysellads = 0xf20d
    case fa_cab = 0xf1ba
    case fa_calculator = 0xf1ec
    case fa_calendar = 0xf073
    case fa_calendar_check_o = 0xf274
    case fa_calendar_minus_o = 0xf272
    case fa_calendar_o = 0xf133
    case fa_calendar_plus_o = 0xf271
    case fa_calendar_times_o = 0xf273
    case fa_camera = 0xf030
    case fa_camera_retro = 0xf083

    case fa_caret_down = 0xf0d7
    case fa_caret_left = 0xf0d9
    case fa_caret_right = 0xf0da
    case fa_caret_square_o_down = 0xf150
    case fa_caret_square_o_left = 0xf191
    case fa_caret_square_o_right = 0xf152
    case fa_caret_square_o_up = 0xf151
    case fa_caret_up = 0xf0d8
    case fa_cart_arrow_down = 0xf218
    case fa_cart_plus = 0xf217
    case fa_cc = 0xf20a
    case fa_cc_amex = 0xf1f3
    case fa_cc_diners_club = 0xf24c
    case fa_cc_discover = 0xf1f2
    case fa_cc_jcb = 0xf24b
    case fa_cc_mastercard = 0xf1f1
    case fa_cc_paypal = 0xf1f4
    case fa_cc_stripe = 0xf1f5
    case fa_cc_visa = 0xf1f0
    case fa_certificate = 0xf0a3
    case fa_chain = 0xf0c1
    case fa_chain_broken = 0xf127
    case fa_check = 0xf00c
    case fa_check_circle = 0xf058
    case fa_check_circle_o = 0xf05d
    case fa_check_square = 0xf14a
    case fa_check_square_o = 0xf046
    case fa_chevron_circle_down = 0xf13a
    case fa_chevron_circle_left = 0xf137
    case fa_chevron_circle_right = 0xf138
    case fa_chevron_circle_up = 0xf139
    case fa_chevron_down = 0xf078
    case fa_chevron_left = 0xf053
    case fa_chevron_right = 0xf054
    case fa_chevron_up = 0xf077
    case fa_child = 0xf1ae
    case fa_chrome = 0xf268
    case fa_circle = 0xf111
    case fa_circle_o = 0xf10c
    case fa_circle_o_notch = 0xf1ce
    case fa_circle_thin = 0xf1db
    case fa_clipboard = 0xf0ea
    case fa_clock_o = 0xf017
    case fa_clone = 0xf24d
    case fa_close = 0xf00d
    case fa_cloud = 0xf0c2
    case fa_cloud_download = 0xf0ed
    case fa_cloud_upload = 0xf0ee
    case fa_cny = 0xf157
    case fa_code = 0xf121
    case fa_code_fork = 0xf126
    case fa_codepen = 0xf1cb
    case fa_codiepie = 0xf284
    case fa_coffee = 0xf0f4
    case fa_cog = 0xf013
    case fa_cogs = 0xf085
    case fa_columns = 0xf0db
    case fa_comment = 0xf075
    case fa_comment_o = 0xf0e5
    case fa_commenting = 0xf27a
    case fa_commenting_o = 0xf27b
    case fa_comments = 0xf086
    case fa_comments_o = 0xf0e6
    case fa_compass = 0xf14e
    case fa_compress = 0xf066
    case fa_connectdevelop = 0xf20e
    case fa_contao = 0xf26d
    case fa_copy = 0xf0c5
    case fa_copyright = 0xf1f9
    case fa_creative_commons = 0xf25e
    case fa_credit_card = 0xf09d
    case fa_credit_card_alt = 0xf283
    case fa_crop = 0xf125
    case fa_crosshairs = 0xf05b
    case fa_css3 = 0xf13c
    case fa_cube = 0xf1b2
    case fa_cubes = 0xf1b3
    case fa_cut = 0xf0c4
    case fa_cutlery = 0xf0f5
    case fa_dashboard = 0xf0e4
    case fa_dashcube = 0xf210
    case fa_database = 0xf1c0
    case fa_deaf = 0xf2a4

    case fa_dedent = 0xf03b
    case fa_delicious = 0xf1a5
    case fa_desktop = 0xf108
    case fa_deviantart = 0xf1bd
    case fa_diamond = 0xf219
    case fa_digg = 0xf1a6
    case fa_dollar = 0xf155
    case fa_dot_circle_o = 0xf192
    case fa_download = 0xf019
    case fa_dribbble = 0xf17d
    case fa_dropbox = 0xf16b
    case fa_drupal = 0xf1a9
    case fa_edge = 0xf282
    case fa_edit = 0xf044
    case fa_eject = 0xf052
    case fa_ellipsis_h = 0xf141
    case fa_ellipsis_v = 0xf142
    case fa_empire = 0xf1d1
    case fa_envelope = 0xf0e0
    case fa_envelope_o = 0xf003
    case fa_envelope_square = 0xf199
    case fa_envira = 0xf299
    case fa_eraser = 0xf12d
    case fa_eur = 0xf153

    case fa_exchange = 0xf0ec
    case fa_exclamation = 0xf12a
    case fa_exclamation_circle = 0xf06a
    case fa_exclamation_triangle = 0xf071
    case fa_expand = 0xf065
    case fa_expeditedssl = 0xf23e
    case fa_external_link = 0xf08e
    case fa_external_link_square = 0xf14c
    case fa_eye = 0xf06e
    case fa_eye_slash = 0xf070
    case fa_eyedropper = 0xf1fb
    case fa_fa = 0xf2b4
    case fa_facebook = 0xf09a

    case fa_facebook_official = 0xf230
    case fa_facebook_square = 0xf082
    case fa_fast_backward = 0xf049
    case fa_fast_forward = 0xf050
    case fa_fax = 0xf1ac
    case fa_feed = 0xf09e
    case fa_female = 0xf182
    case fa_fighter_jet = 0xf0fb
    case fa_file = 0xf15b
    case fa_file_archive_o = 0xf1c6
    case fa_file_audio_o = 0xf1c7
    case fa_file_code_o = 0xf1c9
    case fa_file_excel_o = 0xf1c3
    case fa_file_image_o = 0xf1c5
    case fa_file_movie_o = 0xf1c8
    case fa_file_o = 0xf016
    case fa_file_pdf_o = 0xf1c1

    case fa_file_powerpoint_o = 0xf1c4

    case fa_file_text = 0xf15c
    case fa_file_text_o = 0xf0f6

    case fa_file_word_o = 0xf1c2

    case fa_film = 0xf008
    case fa_filter = 0xf0b0
    case fa_fire = 0xf06d
    case fa_fire_extinguisher = 0xf134
    case fa_firefox = 0xf269
    case fa_first_order = 0xf2b0
    case fa_flag = 0xf024
    case fa_flag_checkered = 0xf11e
    case fa_flag_o = 0xf11d

    case fa_flask = 0xf0c3
    case fa_flickr = 0xf16e
    case fa_floppy_o = 0xf0c7
    case fa_folder = 0xf07b
    case fa_folder_o = 0xf114
    case fa_folder_open = 0xf07c
    case fa_folder_open_o = 0xf115
    case fa_font = 0xf031

    case fa_fonticons = 0xf280
    case fa_fort_awesome = 0xf286
    case fa_forumbee = 0xf211
    case fa_forward = 0xf04e
    case fa_foursquare = 0xf180
    case fa_frown_o = 0xf119
    case fa_futbol_o = 0xf1e3
    case fa_gamepad = 0xf11b
    case fa_gavel = 0xf0e3
    case fa_gbp = 0xf154

    case fa_genderless = 0xf22d
    case fa_get_pocket = 0xf265
    case fa_gg = 0xf260
    case fa_gg_circle = 0xf261
    case fa_gift = 0xf06b
    case fa_git = 0xf1d3
    case fa_git_square = 0xf1d2
    case fa_github = 0xf09b
    case fa_github_alt = 0xf113
    case fa_github_square = 0xf092
    case fa_gitlab = 0xf296
    case fa_gittip = 0xf184
    case fa_glass = 0xf000
    case fa_glide = 0xf2a5
    case fa_glide_g = 0xf2a6
    case fa_globe = 0xf0ac
    case fa_google = 0xf1a0
    case fa_google_plus = 0xf0d5
    case fa_google_plus_circle = 0xf2b3

    case fa_google_plus_square = 0xf0d4
    case fa_google_wallet = 0xf1ee
    case fa_graduation_cap = 0xf19d

    case fa_group = 0xf0c0
    case fa_h_square = 0xf0fd
    case fa_hacker_news = 0xf1d4
    case fa_hand_grab_o = 0xf255
    case fa_hand_lizard_o = 0xf258
    case fa_hand_o_down = 0xf0a7
    case fa_hand_o_left = 0xf0a5
    case fa_hand_o_right = 0xf0a4
    case fa_hand_o_up = 0xf0a6
    case fa_hand_paper_o = 0xf256
    case fa_hand_peace_o = 0xf25b
    case fa_hand_pointer_o = 0xf25a

    case fa_hand_scissors_o = 0xf257
    case fa_hand_spock_o = 0xf259

    case fa_hashtag = 0xf292
    case fa_hdd_o = 0xf0a0
    case fa_header = 0xf1dc
    case fa_headphones = 0xf025
    case fa_heart = 0xf004
    case fa_heart_o = 0xf08a
    case fa_heartbeat = 0xf21e
    case fa_history = 0xf1da
    case fa_home = 0xf015
    case fa_hospital_o = 0xf0f8

    case fa_hourglass = 0xf254
    case fa_hourglass_1 = 0xf251
    case fa_hourglass_2 = 0xf252
    case fa_hourglass_3 = 0xf253

    case fa_hourglass_o = 0xf250

    case fa_houzz = 0xf27c
    case fa_html5 = 0xf13b
    case fa_i_cursor = 0xf246
    case fa_ils = 0xf20b
    case fa_image = 0xf03e
    case fa_inbox = 0xf01c
    case fa_indent = 0xf03c
    case fa_industry = 0xf275
    case fa_info = 0xf129
    case fa_info_circle = 0xf05a
    case fa_inr = 0xf156
    case fa_instagram = 0xf16d

    case fa_internet_explorer = 0xf26b
    case fa_intersex = 0xf224
    case fa_ioxhost = 0xf208
    case fa_italic = 0xf033
    case fa_joomla = 0xf1aa

    case fa_jsfiddle = 0xf1cc
    case fa_key = 0xf084
    case fa_keyboard_o = 0xf11c
    case fa_krw = 0xf159
    case fa_language = 0xf1ab
    case fa_laptop = 0xf109
    case fa_lastfm = 0xf202
    case fa_lastfm_square = 0xf203
    case fa_leaf = 0xf06c
    case fa_leanpub = 0xf212

    case fa_lemon_o = 0xf094
    case fa_level_down = 0xf149
    case fa_level_up = 0xf148
    case fa_life_bouy = 0xf1cd

    case fa_lightbulb_o = 0xf0eb
    case fa_line_chart = 0xf201

    case fa_linkedin = 0xf0e1
    case fa_linkedin_square = 0xf08c
    case fa_linux = 0xf17c
    case fa_list = 0xf03a
    case fa_list_alt = 0xf022
    case fa_list_ol = 0xf0cb
    case fa_list_ul = 0xf0ca
    case fa_location_arrow = 0xf124
    case fa_lock = 0xf023
    case fa_long_arrow_down = 0xf175
    case fa_long_arrow_left = 0xf177
    case fa_long_arrow_right = 0xf178
    case fa_long_arrow_up = 0xf176
    case fa_low_vision = 0xf2a8
    case fa_magic = 0xf0d0
    case fa_magnet = 0xf076
    case fa_mail_forward = 0xf064
    case fa_mail_reply = 0xf112
    case fa_mail_reply_all = 0xf122
    case fa_male = 0xf183
    case fa_map = 0xf279
    case fa_map_marker = 0xf041
    case fa_map_o = 0xf278
    case fa_map_pin = 0xf276
    case fa_map_signs = 0xf277
    case fa_mars = 0xf222
    case fa_mars_double = 0xf227
    case fa_mars_stroke = 0xf229
    case fa_mars_stroke_h = 0xf22b
    case fa_mars_stroke_v = 0xf22a
    case fa_maxcdn = 0xf136
    case fa_meanpath = 0xf20c
    case fa_medium = 0xf23a
    case fa_medkit = 0xf0fa
    case fa_meh_o = 0xf11a
    case fa_mercury = 0xf223
    case fa_microphone = 0xf130
    case fa_microphone_slash = 0xf131
    case fa_minus = 0xf068
    case fa_minus_circle = 0xf056
    case fa_minus_square = 0xf146
    case fa_minus_square_o = 0xf147
    case fa_mixcloud = 0xf289
    case fa_mobile = 0xf10b

    case fa_modx = 0xf285
    case fa_money = 0xf0d6
    case fa_moon_o = 0xf186

    case fa_motorcycle = 0xf21c
    case fa_mouse_pointer = 0xf245
    case fa_music = 0xf001

    case fa_neuter = 0xf22c
    case fa_newspaper_o = 0xf1ea
    case fa_object_group = 0xf247
    case fa_object_ungroup = 0xf248
    case fa_odnoklassniki = 0xf263
    case fa_odnoklassniki_square = 0xf264
    case fa_opencart = 0xf23d
    case fa_openid = 0xf19b
    case fa_opera = 0xf26a
    case fa_optin_monster = 0xf23c

    case fa_pagelines = 0xf18c
    case fa_paint_brush = 0xf1fc
    case fa_paper_plane = 0xf1d8
    case fa_paper_plane_o = 0xf1d9
    case fa_paperclip = 0xf0c6
    case fa_paragraph = 0xf1dd

    case fa_pause = 0xf04c
    case fa_pause_circle = 0xf28b
    case fa_pause_circle_o = 0xf28c
    case fa_paw = 0xf1b0
    case fa_paypal = 0xf1ed
    case fa_pencil = 0xf040
    case fa_pencil_square = 0xf14b

    case fa_percent = 0xf295
    case fa_phone = 0xf095
    case fa_phone_square = 0xf098

    case fa_pie_chart = 0xf200
    case fa_pied_piper = 0xf2ae
    case fa_pied_piper_alt = 0xf1a8
    case fa_pied_piper_pp = 0xf1a7
    case fa_pinterest = 0xf0d2
    case fa_pinterest_p = 0xf231
    case fa_pinterest_square = 0xf0d3
    case fa_plane = 0xf072
    case fa_play = 0xf04b
    case fa_play_circle = 0xf144
    case fa_play_circle_o = 0xf01d
    case fa_plug = 0xf1e6
    case fa_plus = 0xf067
    case fa_plus_circle = 0xf055
    case fa_plus_square = 0xf0fe
    case fa_plus_square_o = 0xf196
    case fa_power_off = 0xf011
    case fa_print = 0xf02f
    case fa_product_hunt = 0xf288
    case fa_puzzle_piece = 0xf12e
    case fa_qq = 0xf1d6
    case fa_qrcode = 0xf029
    case fa_question = 0xf128
    case fa_question_circle = 0xf059
    case fa_question_circle_o = 0xf29c
    case fa_quote_left = 0xf10d
    case fa_quote_right = 0xf10e
    case fa_ra = 0xf1d0
    case fa_random = 0xf074

    case fa_recycle = 0xf1b8
    case fa_reddit = 0xf1a1
    case fa_reddit_alien = 0xf281
    case fa_reddit_square = 0xf1a2
    case fa_refresh = 0xf021
    case fa_registered = 0xf25d

    case fa_renren = 0xf18b

    case fa_repeat = 0xf01e

    case fa_retweet = 0xf079

    case fa_road = 0xf018
    case fa_rocket = 0xf135
    case fa_rotate_left = 0xf0e2

    case fa_rouble = 0xf158

    case fa_rss_square = 0xf143

    case fa_safari = 0xf267

    case fa_scribd = 0xf28a
    case fa_search = 0xf002
    case fa_search_minus = 0xf010
    case fa_search_plus = 0xf00e
    case fa_sellsy = 0xf213

    case fa_server = 0xf233

    case fa_share_alt = 0xf1e0
    case fa_share_alt_square = 0xf1e1
    case fa_share_square = 0xf14d
    case fa_share_square_o = 0xf045

    case fa_shield = 0xf132
    case fa_ship = 0xf21a
    case fa_shirtsinbulk = 0xf214
    case fa_shopping_bag = 0xf290
    case fa_shopping_basket = 0xf291
    case fa_shopping_cart = 0xf07a
    case fa_sign_in = 0xf090
    case fa_sign_language = 0xf2a7
    case fa_sign_out = 0xf08b
    case fa_signal = 0xf012

    case fa_simplybuilt = 0xf215
    case fa_sitemap = 0xf0e8
    case fa_skyatlas = 0xf216
    case fa_skype = 0xf17e
    case fa_slack = 0xf198
    case fa_sliders = 0xf1de
    case fa_slideshare = 0xf1e7
    case fa_smile_o = 0xf118
    case fa_snapchat = 0xf2ab
    case fa_snapchat_ghost = 0xf2ac
    case fa_snapchat_square = 0xf2ad

    case fa_sort = 0xf0dc
    case fa_sort_alpha_asc = 0xf15d
    case fa_sort_alpha_desc = 0xf15e
    case fa_sort_amount_asc = 0xf160
    case fa_sort_amount_desc = 0xf161
    case fa_sort_asc = 0xf0de
    case fa_sort_desc = 0xf0dd

    case fa_sort_numeric_asc = 0xf162
    case fa_sort_numeric_desc = 0xf163

    case fa_soundcloud = 0xf1be
    case fa_space_shuttle = 0xf197
    case fa_spinner = 0xf110
    case fa_spoon = 0xf1b1
    case fa_spotify = 0xf1bc
    case fa_square = 0xf0c8
    case fa_square_o = 0xf096
    case fa_stack_exchange = 0xf18d
    case fa_stack_overflow = 0xf16c
    case fa_star = 0xf005
    case fa_star_half = 0xf089
    case fa_star_half_empty = 0xf123

    case fa_star_o = 0xf006
    case fa_steam = 0xf1b6
    case fa_steam_square = 0xf1b7
    case fa_step_backward = 0xf048
    case fa_step_forward = 0xf051
    case fa_stethoscope = 0xf0f1
    case fa_sticky_note = 0xf249
    case fa_sticky_note_o = 0xf24a
    case fa_stop = 0xf04d
    case fa_stop_circle = 0xf28d
    case fa_stop_circle_o = 0xf28e
    case fa_street_view = 0xf21d
    case fa_strikethrough = 0xf0cc
    case fa_stumbleupon = 0xf1a4
    case fa_stumbleupon_circle = 0xf1a3
    case fa_subscript = 0xf12c
    case fa_subway = 0xf239
    case fa_suitcase = 0xf0f2
    case fa_sun_o = 0xf185
    case fa_superscript = 0xf12b

    case fa_table = 0xf0ce
    case fa_tablet = 0xf10a

    case fa_tag = 0xf02b
    case fa_tags = 0xf02c
    case fa_tasks = 0xf0ae

    case fa_television = 0xf26c
    case fa_tencent_weibo = 0xf1d5
    case fa_terminal = 0xf120
    case fa_text_height = 0xf034
    case fa_text_width = 0xf035
    case fa_th = 0xf00a
    case fa_th_large = 0xf009
    case fa_th_list = 0xf00b
    case fa_themeisle = 0xf2b2
    case fa_thumb_tack = 0xf08d
    case fa_thumbs_down = 0xf165
    case fa_thumbs_o_down = 0xf088
    case fa_thumbs_o_up = 0xf087
    case fa_thumbs_up = 0xf164
    case fa_ticket = 0xf145

    case fa_times_circle = 0xf057
    case fa_times_circle_o = 0xf05c
    case fa_tint = 0xf043

    case fa_toggle_off = 0xf204
    case fa_toggle_on = 0xf205

    case fa_trademark = 0xf25c
    case fa_train = 0xf238

    case fa_transgender_alt = 0xf225
    case fa_trash = 0xf1f8
    case fa_trash_o = 0xf014
    case fa_tree = 0xf1bb
    case fa_trello = 0xf181
    case fa_tripadvisor = 0xf262
    case fa_trophy = 0xf091
    case fa_truck = 0xf0d1
    case fa_try = 0xf195
    case fa_tty = 0xf1e4
    case fa_tumblr = 0xf173
    case fa_tumblr_square = 0xf174

    case fa_twitch = 0xf1e8
    case fa_twitter = 0xf099
    case fa_twitter_square = 0xf081
    case fa_umbrella = 0xf0e9
    case fa_underline = 0xf0cd

    case fa_universal_access = 0xf29a

    case fa_unlock = 0xf09c
    case fa_unlock_alt = 0xf13e

    case fa_upload = 0xf093
    case fa_usb = 0xf287

    case fa_user = 0xf007
    case fa_user_md = 0xf0f0
    case fa_user_plus = 0xf234
    case fa_user_secret = 0xf21b
    case fa_user_times = 0xf235

    case fa_venus = 0xf221
    case fa_venus_double = 0xf226
    case fa_venus_mars = 0xf228
    case fa_viacoin = 0xf237
    case fa_viadeo = 0xf2a9
    case fa_viadeo_square = 0xf2aa
    case fa_video_camera = 0xf03d
    case fa_vimeo = 0xf27d
    case fa_vimeo_square = 0xf194
    case fa_vine = 0xf1ca
    case fa_vk = 0xf189
    case fa_volume_control_phone = 0xf2a0
    case fa_volume_down = 0xf027
    case fa_volume_off = 0xf026
    case fa_volume_up = 0xf028

    case fa_wechat = 0xf1d7
    case fa_weibo = 0xf18a

    case fa_whatsapp = 0xf232
    case fa_wheelchair = 0xf193
    case fa_wheelchair_alt = 0xf29b
    case fa_wifi = 0xf1eb
    case fa_wikipedia_w = 0xf266
    case fa_windows = 0xf17a

    case fa_wordpress = 0xf19a
    case fa_wpbeginner = 0xf297
    case fa_wpforms = 0xf298
    case fa_wrench = 0xf0ad
    case fa_xing = 0xf168
    case fa_xing_square = 0xf169
    case fa_y_combinator = 0xf23b
    
    case fa_yahoo = 0xf19e
    
    case fa_yoast = 0xf2b1
    case fa_youtube = 0xf167
    case fa_youtube_play = 0xf16a
    case fa_youtube_square = 0xf166
    
    
}

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
    /// 4.7.0
    case addressBook = 0xf2b9
    case addressBookO = 0xf2ba
    case addressCard = 0xf2bb
    case addressCardO = 0xf2bc
    case bandcamp = 0xf2d5
    case bath = 0xf2cd
    case driversLicense = 0xf2c2
    case driversLicenseO = 0xf2c3
    case eercast = 0xf2da
    case envelopeOpen = 0xf2b6
    case envelopeOpenO = 0xf2b7
    case etsy = 0xf2d7
    case freeCodeCamp = 0xf2c5
    case grav = 0xf2d6
    case handshakeO = 0xf2b5
    case idBadge = 0xf2c1
    case imdb = 0xf2d8
    case linode = 0xf2b8
    case meetup = 0xf2e0
    case microchip = 0xf2db
    case podcast = 0xf2ce
    case quora = 0xf2c4
    case ravelry = 0xf2d9
    case shower = 0xf2cc
    case snowflakeO = 0xf2dc
    case superpowers = 0xf2dd
    case telegram = 0xf2c6
    case thermometer = 0xf2c7
    case thermometerEmpty = 0xf2cb
    case thermometerHalf = 0xf2c9
    case thermometerQuarter = 0xf2ca
    case thermometerThreeQuarters = 0xf2c8
    case timesRectangle = 0xf2d3
    case timesRectangleO = 0xf2d4
    case userCircle = 0xf2bd
    case userCircleO = 0xf2be
    case userO = 0xf2c0
    case windowMaximize = 0xf2d0
    case windowMinimize = 0xf2d1
    case windowRestore = 0xf2d2
    case wpexplorer = 0xf2de
    
    /// old
    case fa500px = 0xf26e
    case adjust = 0xf042
    case adn = 0xf170
    case alignCenter = 0xf037
    case alignJustify = 0xf039
    case alignLeft = 0xf036
    case alignRight = 0xf038
    case amazon = 0xf270
    case ambulance = 0xf0f9
    case americanSignLanguageInterpreting = 0xf2a3
    case anchor = 0xf13d
    case android = 0xf17b
    case angellist = 0xf209
    case angleDoubleDown = 0xf103
    case angleDoubleLeft = 0xf100
    case angleDoubleRight = 0xf101
    case angleDoubleUp = 0xf102
    case angleDown = 0xf107
    case angleLeft = 0xf104
    case angleRight = 0xf105
    case angleUp = 0xf106
    case apple = 0xf179
    case archive = 0xf187
    case areaChart = 0xf1fe
    case arrowCircleDown = 0xf0ab
    case arrowCircleLeft = 0xf0a8
    case arrowCircleODown = 0xf01a
    case arrowCircleOLeft = 0xf190
    case arrowCircleORight = 0xf18e
    case arrowCircleOUp = 0xf01b
    case arrowCircleRight = 0xf0a9
    case arrowCircleUp = 0xf0aa
    case arrowDown = 0xf063
    case arrowLeft = 0xf060
    case arrowRight = 0xf061
    case arrowUp = 0xf062
    case arrows = 0xf047
    case arrowsAlt = 0xf0b2
    case arrowsH = 0xf07e
    case arrowsV = 0xf07d
    
    case assistiveListeningSystems = 0xf2a2
    case asterisk = 0xf069
    case at = 0xf1fa
    case audioDescription = 0xf29e
    case automobile = 0xf1b9
    case backward = 0xf04a
    case balanceScale = 0xf24e
    case ban = 0xf05e
    case bank = 0xf19c
    
    case barChartO = 0xf080
    case barcode = 0xf02a
    case bars = 0xf0c9
    
    case batteryEmpty = 0xf244
    case batteryFull = 0xf240
    case batteryHalf = 0xf242
    case batteryQuarter = 0xf243
    case batteryThreeQuarters = 0xf241
    case bed = 0xf236
    case beer = 0xf0fc
    case behance = 0xf1b4
    case behanceSquare = 0xf1b5
    case bell = 0xf0f3
    case bellO = 0xf0a2
    case bellSlash = 0xf1f6
    case bellSlashO = 0xf1f7
    case bicycle = 0xf206
    case binoculars = 0xf1e5
    case birthdayCake = 0xf1fd
    case bitbucket = 0xf171
    case bitbucketSquare = 0xf172
    case bitcoin = 0xf15a
    case blackTie = 0xf27e
    case blind = 0xf29d
    case bluetooth = 0xf293
    case bluetoothB = 0xf294
    case bold = 0xf032
    case bolt = 0xf0e7
    case bomb = 0xf1e2
    case book = 0xf02d
    case bookmark = 0xf02e
    case bookmarkO = 0xf097
    case braille = 0xf2a1
    case briefcase = 0xf0b1
    
    case bug = 0xf188
    case building = 0xf1ad
    case buildingO = 0xf0f7
    case bullhorn = 0xf0a1
    case bullseye = 0xf140
    case bus = 0xf207
    case buysellads = 0xf20d
    case cab = 0xf1ba
    case calculator = 0xf1ec
    case calendar = 0xf073
    case calendarCheckO = 0xf274
    case calendarMinusO = 0xf272
    case calendarO = 0xf133
    case calendarPlusO = 0xf271
    case calendarTimesO = 0xf273
    case camera = 0xf030
    case cameraRetro = 0xf083
    
    case caretDown = 0xf0d7
    case caretLeft = 0xf0d9
    case caretRight = 0xf0da
    case caretSquareODown = 0xf150
    case caretSquareOLeft = 0xf191
    case caretSquareORight = 0xf152
    case caretSquareOUp = 0xf151
    case caretUp = 0xf0d8
    case cartArrowDown = 0xf218
    case cartPlus = 0xf217
    case cc = 0xf20a
    case ccAmex = 0xf1f3
    case ccDinersClub = 0xf24c
    case ccDiscover = 0xf1f2
    case ccJcb = 0xf24b
    case ccMastercard = 0xf1f1
    case ccPaypal = 0xf1f4
    case ccStripe = 0xf1f5
    case ccVisa = 0xf1f0
    case certificate = 0xf0a3
    case chain = 0xf0c1
    case chainBroken = 0xf127
    case check = 0xf00c
    case checkCircle = 0xf058
    case checkCircleO = 0xf05d
    case checkSquare = 0xf14a
    case checkSquareO = 0xf046
    case chevronCircleDown = 0xf13a
    case chevronCircleLeft = 0xf137
    case chevronCircleRight = 0xf138
    case chevronCircleUp = 0xf139
    case chevronDown = 0xf078
    case chevronLeft = 0xf053
    case chevronRight = 0xf054
    case chevronUp = 0xf077
    case child = 0xf1ae
    case chrome = 0xf268
    case circle = 0xf111
    case circleO = 0xf10c
    case circleONotch = 0xf1ce
    case circleThin = 0xf1db
    case clipboard = 0xf0ea
    case clockO = 0xf017
    case clone = 0xf24d
    case close = 0xf00d
    case cloud = 0xf0c2
    case cloudDownload = 0xf0ed
    case cloudUpload = 0xf0ee
    case cny = 0xf157
    case code = 0xf121
    case codeFork = 0xf126
    case codepen = 0xf1cb
    case codiepie = 0xf284
    case coffee = 0xf0f4
    case cog = 0xf013
    case cogs = 0xf085
    case columns = 0xf0db
    case comment = 0xf075
    case commentO = 0xf0e5
    case commenting = 0xf27a
    case commentingO = 0xf27b
    case comments = 0xf086
    case commentsO = 0xf0e6
    case compass = 0xf14e
    case compress = 0xf066
    case connectdevelop = 0xf20e
    case contao = 0xf26d
    case copy = 0xf0c5
    case copyright = 0xf1f9
    case creativeCommons = 0xf25e
    case creditCard = 0xf09d
    case creditCardAlt = 0xf283
    case crop = 0xf125
    case crosshairs = 0xf05b
    case css3 = 0xf13c
    case cube = 0xf1b2
    case cubes = 0xf1b3
    case cut = 0xf0c4
    case cutlery = 0xf0f5
    case dashboard = 0xf0e4
    case dashcube = 0xf210
    case database = 0xf1c0
    case deaf = 0xf2a4
    
    case dedent = 0xf03b
    case delicious = 0xf1a5
    case desktop = 0xf108
    case deviantart = 0xf1bd
    case diamond = 0xf219
    case digg = 0xf1a6
    case dollar = 0xf155
    case dotCircleO = 0xf192
    case download = 0xf019
    case dribbble = 0xf17d
    case dropbox = 0xf16b
    case drupal = 0xf1a9
    case edge = 0xf282
    case edit = 0xf044
    case eject = 0xf052
    case ellipsisH = 0xf141
    case ellipsisV = 0xf142
    case empire = 0xf1d1
    case envelope = 0xf0e0
    case envelopeO = 0xf003
    case envelopeSquare = 0xf199
    case envira = 0xf299
    case eraser = 0xf12d
    case eur = 0xf153
    
    case exchange = 0xf0ec
    case exclamation = 0xf12a
    case exclamationCircle = 0xf06a
    case exclamationTriangle = 0xf071
    case expand = 0xf065
    case expeditedssl = 0xf23e
    case externalLink = 0xf08e
    case externalLinkSquare = 0xf14c
    case eye = 0xf06e
    case eyeSlash = 0xf070
    case eyedropper = 0xf1fb
    case fa = 0xf2b4
    case facebook = 0xf09a
    
    case facebookOfficial = 0xf230
    case facebookSquare = 0xf082
    case fastBackward = 0xf049
    case fastForward = 0xf050
    case fax = 0xf1ac
    case feed = 0xf09e
    case female = 0xf182
    case fighterJet = 0xf0fb
    case file = 0xf15b
    case fileArchiveO = 0xf1c6
    case fileAudioO = 0xf1c7
    case fileCodeO = 0xf1c9
    case fileExcelO = 0xf1c3
    case fileImageO = 0xf1c5
    case fileMovieO = 0xf1c8
    case fileO = 0xf016
    case filePdfO = 0xf1c1
    
    case filePowerpointO = 0xf1c4
    
    case fileText = 0xf15c
    case fileTextO = 0xf0f6
    
    case fileWordO = 0xf1c2
    
    case film = 0xf008
    case filter = 0xf0b0
    case fire = 0xf06d
    case fireExtinguisher = 0xf134
    case firefox = 0xf269
    case firstOrder = 0xf2b0
    case flag = 0xf024
    case flagCheckered = 0xf11e
    case flagO = 0xf11d
    
    case flask = 0xf0c3
    case flickr = 0xf16e
    case floppyO = 0xf0c7
    case folder = 0xf07b
    case folderO = 0xf114
    case folderOpen = 0xf07c
    case folderOpenO = 0xf115
    case font = 0xf031
    
    case fonticons = 0xf280
    case fortAwesome = 0xf286
    case forumbee = 0xf211
    case forward = 0xf04e
    case foursquare = 0xf180
    case frownO = 0xf119
    case futbolO = 0xf1e3
    case gamepad = 0xf11b
    case gavel = 0xf0e3
    case gbp = 0xf154
    
    case genderless = 0xf22d
    case getPocket = 0xf265
    case gg = 0xf260
    case ggCircle = 0xf261
    case gift = 0xf06b
    case git = 0xf1d3
    case gitSquare = 0xf1d2
    case github = 0xf09b
    case githubAlt = 0xf113
    case githubSquare = 0xf092
    case gitlab = 0xf296
    case gittip = 0xf184
    case glass = 0xf000
    case glide = 0xf2a5
    case glideG = 0xf2a6
    case globe = 0xf0ac
    case google = 0xf1a0
    case googlePlus = 0xf0d5
    case googlePlusCircle = 0xf2b3
    
    case googlePlusSquare = 0xf0d4
    case googleWallet = 0xf1ee
    case graduationCap = 0xf19d
    
    case group = 0xf0c0
    case hSquare = 0xf0fd
    case hackerNews = 0xf1d4
    case handGrabO = 0xf255
    case handLizardO = 0xf258
    case handODown = 0xf0a7
    case handOLeft = 0xf0a5
    case handORight = 0xf0a4
    case handOUp = 0xf0a6
    case handPaperO = 0xf256
    case handPeaceO = 0xf25b
    case handPointerO = 0xf25a
    
    case handScissorsO = 0xf257
    case handSpockO = 0xf259
    
    case hashtag = 0xf292
    case hddO = 0xf0a0
    case header = 0xf1dc
    case headphones = 0xf025
    case heart = 0xf004
    case heartO = 0xf08a
    case heartbeat = 0xf21e
    case history = 0xf1da
    case home = 0xf015
    case hospitalO = 0xf0f8
    
    case hourglass = 0xf254
    case hourglassOne = 0xf251
    case hourglassTwo = 0xf252
    case hourglassThree = 0xf253
    
    case hourglassO = 0xf250
    
    case houzz = 0xf27c
    case html5 = 0xf13b
    case iCursor = 0xf246
    case ils = 0xf20b
    case image = 0xf03e
    case inbox = 0xf01c
    case indent = 0xf03c
    case industry = 0xf275
    case info = 0xf129
    case infoCircle = 0xf05a
    case inr = 0xf156
    case instagram = 0xf16d
    
    case internetExplorer = 0xf26b
    case intersex = 0xf224
    case ioxhost = 0xf208
    case italic = 0xf033
    case joomla = 0xf1aa
    
    case jsfiddle = 0xf1cc
    case key = 0xf084
    case keyboardO = 0xf11c
    case krw = 0xf159
    case language = 0xf1ab
    case laptop = 0xf109
    case lastfm = 0xf202
    case lastfmSquare = 0xf203
    case leaf = 0xf06c
    case leanpub = 0xf212
    
    case lemonO = 0xf094
    case levelDown = 0xf149
    case levelUp = 0xf148
    case lifeBouy = 0xf1cd
    
    case lightbulbO = 0xf0eb
    case lineChart = 0xf201
    
    case linkedin = 0xf0e1
    case linkedinSquare = 0xf08c
    case linux = 0xf17c
    case list = 0xf03a
    case listAlt = 0xf022
    case listOl = 0xf0cb
    case listUl = 0xf0ca
    case locationArrow = 0xf124
    case lock = 0xf023
    case longArrowDown = 0xf175
    case longArrowLeft = 0xf177
    case longArrowRight = 0xf178
    case longArrowUp = 0xf176
    case lowVision = 0xf2a8
    case magic = 0xf0d0
    case magnet = 0xf076
    case mailForward = 0xf064
    case mailReply = 0xf112
    case mailReplyAll = 0xf122
    case male = 0xf183
    case map = 0xf279
    case mapMarker = 0xf041
    case mapO = 0xf278
    case mapPin = 0xf276
    case mapSigns = 0xf277
    case mars = 0xf222
    case marsDouble = 0xf227
    case marsStroke = 0xf229
    case marsStrokeH = 0xf22b
    case marsStrokeV = 0xf22a
    case maxcdn = 0xf136
    case meanpath = 0xf20c
    case medium = 0xf23a
    case medkit = 0xf0fa
    case mehO = 0xf11a
    case mercury = 0xf223
    case microphone = 0xf130
    case microphoneSlash = 0xf131
    case minus = 0xf068
    case minusCircle = 0xf056
    case minusSquare = 0xf146
    case minusSquareO = 0xf147
    case mixcloud = 0xf289
    case mobile = 0xf10b
    
    case modx = 0xf285
    case money = 0xf0d6
    case moonO = 0xf186
    
    case motorcycle = 0xf21c
    case mousePointer = 0xf245
    case music = 0xf001
    
    case neuter = 0xf22c
    case newspaperO = 0xf1ea
    case objectGroup = 0xf247
    case objectUngroup = 0xf248
    case odnoklassniki = 0xf263
    case odnoklassnikiSquare = 0xf264
    case opencart = 0xf23d
    case openid = 0xf19b
    case opera = 0xf26a
    case optinMonster = 0xf23c
    
    case pagelines = 0xf18c
    case paintBrush = 0xf1fc
    case paperPlane = 0xf1d8
    case paperPlaneO = 0xf1d9
    case paperclip = 0xf0c6
    case paragraph = 0xf1dd
    
    case pause = 0xf04c
    case pauseCircle = 0xf28b
    case pauseCircleO = 0xf28c
    case paw = 0xf1b0
    case paypal = 0xf1ed
    case pencil = 0xf040
    case pencilSquare = 0xf14b
    
    case percent = 0xf295
    case phone = 0xf095
    case phoneSquare = 0xf098
    
    case pieChart = 0xf200
    case piedPiper = 0xf2ae
    case piedPiperAlt = 0xf1a8
    case piedPiperPp = 0xf1a7
    case pinterest = 0xf0d2
    case pinterestP = 0xf231
    case pinterestSquare = 0xf0d3
    case plane = 0xf072
    case play = 0xf04b
    case playCircle = 0xf144
    case playCircleO = 0xf01d
    case plug = 0xf1e6
    case plus = 0xf067
    case plusCircle = 0xf055
    case plusSquare = 0xf0fe
    case plusSquareO = 0xf196
    case powerOff = 0xf011
    case print = 0xf02f
    case productHunt = 0xf288
    case puzzlePiece = 0xf12e
    case qq = 0xf1d6
    case qrcode = 0xf029
    case question = 0xf128
    case questionCircle = 0xf059
    case questionCircleO = 0xf29c
    case quoteLeft = 0xf10d
    case quoteRight = 0xf10e
    case ra = 0xf1d0
    case random = 0xf074
    
    case recycle = 0xf1b8
    case reddit = 0xf1a1
    case redditAlien = 0xf281
    case redditSquare = 0xf1a2
    case refresh = 0xf021
    case registered = 0xf25d
    
    case renren = 0xf18b
    
    case faRepeat = 0xf01e
    
    case retweet = 0xf079
    
    case road = 0xf018
    case rocket = 0xf135
    case rotateLeft = 0xf0e2
    
    case rouble = 0xf158
    
    case rssSquare = 0xf143
    
    case safari = 0xf267
    
    case scribd = 0xf28a
    case search = 0xf002
    case searchMinus = 0xf010
    case searchPlus = 0xf00e
    case sellsy = 0xf213
    
    case server = 0xf233
    
    case shareAlt = 0xf1e0
    case shareAltSquare = 0xf1e1
    case shareSquare = 0xf14d
    case shareSquareO = 0xf045
    
    case shield = 0xf132
    case ship = 0xf21a
    case shirtsinbulk = 0xf214
    case shoppingBag = 0xf290
    case shoppingBasket = 0xf291
    case shoppingCart = 0xf07a
    case signIn = 0xf090
    case signLanguage = 0xf2a7
    case signOut = 0xf08b
    case signal = 0xf012
    
    case simplybuilt = 0xf215
    case sitemap = 0xf0e8
    case skyatlas = 0xf216
    case skype = 0xf17e
    case slack = 0xf198
    case sliders = 0xf1de
    case slideshare = 0xf1e7
    case smileO = 0xf118
    case snapchat = 0xf2ab
    case snapchatGhost = 0xf2ac
    case snapchatSquare = 0xf2ad
    
    case sort = 0xf0dc
    case sortAlphaAsc = 0xf15d
    case sortAlphaDesc = 0xf15e
    case sortAmountAsc = 0xf160
    case sortAmountDesc = 0xf161
    case sortAsc = 0xf0de
    case sortDesc = 0xf0dd
    
    case sortNumericAsc = 0xf162
    case sortNumericDesc = 0xf163
    
    case soundcloud = 0xf1be
    case spaceShuttle = 0xf197
    case spinner = 0xf110
    case spoon = 0xf1b1
    case spotify = 0xf1bc
    case square = 0xf0c8
    case squareO = 0xf096
    case stackExchange = 0xf18d
    case stackOverflow = 0xf16c
    case star = 0xf005
    case starHalf = 0xf089
    case starHalfEmpty = 0xf123
    
    case starO = 0xf006
    case steam = 0xf1b6
    case steamSquare = 0xf1b7
    case stepBackward = 0xf048
    case stepForward = 0xf051
    case stethoscope = 0xf0f1
    case stickyNote = 0xf249
    case stickyNoteO = 0xf24a
    case stop = 0xf04d
    case stopCircle = 0xf28d
    case stopCircleO = 0xf28e
    case streetView = 0xf21d
    case strikethrough = 0xf0cc
    case stumbleupon = 0xf1a4
    case stumbleuponCircle = 0xf1a3
    case faSubscript = 0xf12c
    case subway = 0xf239
    case suitcase = 0xf0f2
    case sunO = 0xf185
    case superscript = 0xf12b
    
    case table = 0xf0ce
    case tablet = 0xf10a
    
    case tag = 0xf02b
    case tags = 0xf02c
    case tasks = 0xf0ae
    
    case television = 0xf26c
    case tencentWeibo = 0xf1d5
    case terminal = 0xf120
    case textHeight = 0xf034
    case textWidth = 0xf035
    case th = 0xf00a
    case thLarge = 0xf009
    case thTist = 0xf00b
    case themeisle = 0xf2b2
    case thumbTack = 0xf08d
    case thumbsDown = 0xf165
    case thumbsODown = 0xf088
    case thumbsOUp = 0xf087
    case thumbsUp = 0xf164
    case ticket = 0xf145
    
    case timesCircle = 0xf057
    case timesCircleO = 0xf05c
    case tint = 0xf043
    
    case toggleOff = 0xf204
    case toggleOn = 0xf205
    
    case trademark = 0xf25c
    case train = 0xf238
    
    case transgenderAlt = 0xf225
    case trash = 0xf1f8
    case trashO = 0xf014
    case tree = 0xf1bb
    case trello = 0xf181
    case tripadvisor = 0xf262
    case trophy = 0xf091
    case truck = 0xf0d1
    case faTry = 0xf195
    case tty = 0xf1e4
    case tumblr = 0xf173
    case tumblrSquare = 0xf174
    
    case twitch = 0xf1e8
    case twitter = 0xf099
    case twitterSquare = 0xf081
    case umbrella = 0xf0e9
    case underline = 0xf0cd
    
    case universalAccess = 0xf29a
    
    case unlock = 0xf09c
    case unlockAlt = 0xf13e
    
    case upload = 0xf093
    case usb = 0xf287
    
    case user = 0xf007
    case userMd = 0xf0f0
    case userPlus = 0xf234
    case userSecret = 0xf21b
    case userTimes = 0xf235
    
    case venus = 0xf221
    case venusDouble = 0xf226
    case venusMars = 0xf228
    case viacoin = 0xf237
    case viadeo = 0xf2a9
    case viadeoSquare = 0xf2aa
    case videoCamera = 0xf03d
    case vimeo = 0xf27d
    case vimeoSquare = 0xf194
    case vine = 0xf1ca
    case vk = 0xf189
    case volumeControlPhone = 0xf2a0
    case volumeDown = 0xf027
    case volumeOff = 0xf026
    case volumeUp = 0xf028
    
    case wechat = 0xf1d7
    case weibo = 0xf18a
    
    case whatsapp = 0xf232
    case wheelchair = 0xf193
    case wheelchairAlt = 0xf29b
    case wifi = 0xf1eb
    case wikipediaW = 0xf266
    case windows = 0xf17a
    
    case wordpress = 0xf19a
    case wpbeginner = 0xf297
    case wpforms = 0xf298
    case wrench = 0xf0ad
    case xing = 0xf168
    case xingSquare = 0xf169
    case yCombinator = 0xf23b
    
    case yahoo = 0xf19e
    
    case yoast = 0xf2b1
    case youtube = 0xf167
    case youtubePlay = 0xf16a
    case youtubeSquare = 0xf166
}

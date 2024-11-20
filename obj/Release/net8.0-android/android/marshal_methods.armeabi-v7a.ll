; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [114 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [228 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 106
	i32 53857724, ; 1: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 1
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 49
	i32 113429830, ; 3: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 31
	i32 117431740, ; 4: System.Runtime.InteropServices => 0x6ffddbc => 101
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 54
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 72
	i32 195452805, ; 7: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 8: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 9: System.ComponentModel => 0xc38ff48 => 85
	i32 280992041, ; 10: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 318968648, ; 11: Xamarin.AndroidX.Activity.dll => 0x13031348 => 50
	i32 336156722, ; 12: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 13: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 61
	i32 356389973, ; 14: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 357576608, ; 15: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 2
	i32 379916513, ; 16: System.Threading.Thread.dll => 0x16a510e1 => 106
	i32 385762202, ; 17: System.Memory.dll => 0x16fe439a => 93
	i32 395744057, ; 18: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 19: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 20: System.Collections => 0x1a61054f => 82
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 60
	i32 469710990, ; 22: System.dll => 0x1bff388e => 109
	i32 498788369, ; 23: System.ObjectModel => 0x1dbae811 => 98
	i32 500358224, ; 24: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 25: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 26: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 44
	i32 527168573, ; 27: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 10
	i32 539058512, ; 28: Microsoft.Extensions.Logging => 0x20216150 => 41
	i32 592146354, ; 29: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 30: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 31: Xamarin.AndroidX.CustomView => 0x2568904f => 58
	i32 672442732, ; 32: System.Collections.Concurrent => 0x2814a96c => 79
	i32 688181140, ; 33: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 34: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 35: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 36: System.Runtime.Loader.dll => 0x2b15ed29 => 102
	i32 759454413, ; 37: System.Net.Requests => 0x2d445acd => 96
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 90
	i32 789151979, ; 39: Microsoft.Extensions.Options => 0x2f0980eb => 43
	i32 823281589, ; 40: System.Private.Uri.dll => 0x311247b5 => 99
	i32 830298997, ; 41: System.IO.Compression.Brotli => 0x317d5b75 => 89
	i32 870878177, ; 42: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 0
	i32 904024072, ; 43: System.ComponentModel.Primitives.dll => 0x35e25008 => 83
	i32 926902833, ; 44: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 45: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 61
	i32 992768348, ; 46: System.Collections.dll => 0x3b2c715c => 82
	i32 993161700, ; 47: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 32
	i32 994547685, ; 48: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 6
	i32 1012816738, ; 49: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 71
	i32 1028951442, ; 50: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 40
	i32 1029334545, ; 51: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 52: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 51
	i32 1044663988, ; 53: System.Linq.Expressions.dll => 0x3e444eb4 => 91
	i32 1052210849, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 63
	i32 1082857460, ; 55: System.ComponentModel.TypeConverter => 0x408b17f4 => 84
	i32 1084122840, ; 56: Xamarin.Kotlin.StdLib => 0x409e66d8 => 76
	i32 1098259244, ; 57: System => 0x41761b2c => 109
	i32 1178241025, ; 58: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 68
	i32 1178797549, ; 59: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 7
	i32 1203215381, ; 60: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 61: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1293217323, ; 62: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 59
	i32 1324164729, ; 63: System.Linq => 0x4eed2679 => 92
	i32 1376866003, ; 64: Xamarin.AndroidX.SavedState => 0x52114ed3 => 71
	i32 1406073936, ; 65: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 55
	i32 1461234159, ; 66: System.Collections.Immutable.dll => 0x5718a9ef => 80
	i32 1462112819, ; 67: System.IO.Compression.dll => 0x57261233 => 90
	i32 1469204771, ; 68: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 52
	i32 1470490898, ; 69: Microsoft.Extensions.Primitives => 0x57a5e912 => 44
	i32 1479771757, ; 70: System.Collections.Immutable => 0x5833866d => 80
	i32 1480492111, ; 71: System.IO.Compression.Brotli.dll => 0x583e844f => 89
	i32 1493001747, ; 72: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 73: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 74: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 105
	i32 1551623176, ; 75: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1554762148, ; 76: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 8
	i32 1580413037, ; 77: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 26
	i32 1591080825, ; 78: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 33
	i32 1622152042, ; 79: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 65
	i32 1624863272, ; 80: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 74
	i32 1634654947, ; 81: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 82: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 57
	i32 1639515021, ; 83: System.Net.Http.dll => 0x61b9038d => 94
	i32 1639986890, ; 84: System.Text.RegularExpressions => 0x61c036ca => 105
	i32 1657153582, ; 85: System.Runtime => 0x62c6282e => 103
	i32 1658251792, ; 86: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 75
	i32 1677501392, ; 87: System.Net.Primitives.dll => 0x63fca3d0 => 95
	i32 1679769178, ; 88: System.Security.Cryptography => 0x641f3e5a => 104
	i32 1729485958, ; 89: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 53
	i32 1736233607, ; 90: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1763938596, ; 91: System.Diagnostics.TraceSource.dll => 0x69239124 => 88
	i32 1766324549, ; 92: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 72
	i32 1770582343, ; 93: Microsoft.Extensions.Logging.dll => 0x6988f147 => 41
	i32 1780572499, ; 94: Mono.Android.Runtime.dll => 0x6a216153 => 112
	i32 1788241197, ; 95: Xamarin.AndroidX.Fragment => 0x6a96652d => 60
	i32 1808609942, ; 96: Xamarin.AndroidX.Loader => 0x6bcd3296 => 65
	i32 1809966115, ; 97: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 18
	i32 1813058853, ; 98: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 76
	i32 1813201214, ; 99: Xamarin.Google.Android.Material => 0x6c13413e => 75
	i32 1818569960, ; 100: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 69
	i32 1821794637, ; 101: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 12
	i32 1828688058, ; 102: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 42
	i32 1842015223, ; 103: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1858542181, ; 104: System.Linq.Expressions => 0x6ec71a65 => 91
	i32 1910275211, ; 105: System.Collections.NonGeneric.dll => 0x71dc7c8b => 81
	i32 1960264639, ; 106: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 15
	i32 1968388702, ; 107: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 37
	i32 2014344398, ; 108: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 11
	i32 2019465201, ; 109: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 63
	i32 2025202353, ; 110: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2043674646, ; 111: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 14
	i32 2045470958, ; 112: System.Private.Xml => 0x79eb68ee => 100
	i32 2055257422, ; 113: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 62
	i32 2070888862, ; 114: System.Diagnostics.TraceSource => 0x7b6f419e => 88
	i32 2079903147, ; 115: System.Runtime.dll => 0x7bf8cdab => 103
	i32 2090596640, ; 116: System.Numerics.Vectors => 0x7c9bf920 => 97
	i32 2127167465, ; 117: System.Console => 0x7ec9ffe9 => 86
	i32 2150663486, ; 118: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 16
	i32 2159891885, ; 119: Microsoft.Maui => 0x80bd55ad => 47
	i32 2165051842, ; 120: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 23
	i32 2181898931, ; 121: Microsoft.Extensions.Options.dll => 0x820d22b3 => 43
	i32 2192057212, ; 122: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 42
	i32 2193016926, ; 123: System.ObjectModel.dll => 0x82b6c85e => 98
	i32 2201107256, ; 124: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 77
	i32 2201231467, ; 125: System.Net.Http => 0x8334206b => 94
	i32 2266799131, ; 126: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 38
	i32 2270573516, ; 127: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 128: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 70
	i32 2289298199, ; 129: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 27
	i32 2305521784, ; 130: System.Private.CoreLib.dll => 0x896b7878 => 110
	i32 2353062107, ; 131: System.Net.Primitives => 0x8c40e0db => 95
	i32 2368005991, ; 132: System.Xml.ReaderWriter.dll => 0x8d24e767 => 108
	i32 2369760409, ; 133: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 28
	i32 2371007202, ; 134: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 37
	i32 2421992093, ; 135: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 19
	i32 2435356389, ; 136: System.Console.dll => 0x912896e5 => 86
	i32 2475788418, ; 137: Java.Interop.dll => 0x93918882 => 111
	i32 2480646305, ; 138: Microsoft.Maui.Controls => 0x93dba8a1 => 45
	i32 2520433370, ; 139: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 25
	i32 2590865717, ; 140: FinLockerTaskList.dll => 0x9a6d7935 => 78
	i32 2605712449, ; 141: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 77
	i32 2617129537, ; 142: System.Private.Xml.dll => 0x9bfe3a41 => 100
	i32 2620871830, ; 143: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 57
	i32 2663698177, ; 144: System.Runtime.Loader => 0x9ec4cf01 => 102
	i32 2732626843, ; 145: Xamarin.AndroidX.Activity => 0xa2e0939b => 50
	i32 2737747696, ; 146: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 52
	i32 2758225723, ; 147: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 46
	i32 2764765095, ; 148: Microsoft.Maui.dll => 0xa4caf7a7 => 47
	i32 2778768386, ; 149: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 73
	i32 2801831435, ; 150: Microsoft.Maui.Graphics => 0xa7008e0b => 49
	i32 2802068195, ; 151: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 29
	i32 2806116107, ; 152: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 153: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 55
	i32 2831556043, ; 154: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 155: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 73
	i32 2857259519, ; 156: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 5
	i32 2861189240, ; 157: Microsoft.Maui.Essentials => 0xaa8a4878 => 48
	i32 2868488919, ; 158: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2883495834, ; 159: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 24
	i32 2909740682, ; 160: System.Private.CoreLib => 0xad6f1e8a => 110
	i32 2916838712, ; 161: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 74
	i32 2919462931, ; 162: System.Numerics.Vectors.dll => 0xae037813 => 97
	i32 2959614098, ; 163: System.ComponentModel.dll => 0xb0682092 => 85
	i32 2978675010, ; 164: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 59
	i32 3038032645, ; 165: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 166: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 66
	i32 3059408633, ; 167: Mono.Android.Runtime => 0xb65adef9 => 112
	i32 3059793426, ; 168: System.ComponentModel.Primitives => 0xb660be12 => 83
	i32 3077302341, ; 169: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 170: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 67
	i32 3220365878, ; 171: System.Threading => 0xbff2e236 => 107
	i32 3258312781, ; 172: Xamarin.AndroidX.CardView => 0xc235e84d => 53
	i32 3316684772, ; 173: System.Net.Requests.dll => 0xc5b097e4 => 96
	i32 3317135071, ; 174: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 58
	i32 3346324047, ; 175: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 68
	i32 3362522851, ; 176: Xamarin.AndroidX.Core => 0xc86c06e3 => 56
	i32 3366347497, ; 177: Java.Interop => 0xc8a662e9 => 111
	i32 3374999561, ; 178: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 70
	i32 3428513518, ; 179: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 39
	i32 3463511458, ; 180: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 181: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 84
	i32 3476120550, ; 182: Mono.Android => 0xcf3163e6 => 113
	i32 3479583265, ; 183: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3542658132, ; 184: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 30
	i32 3596930546, ; 185: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 4
	i32 3608519521, ; 186: System.Linq.dll => 0xd715a361 => 92
	i32 3623444314, ; 187: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 3
	i32 3641597786, ; 188: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 62
	i32 3643854240, ; 189: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 67
	i32 3647796983, ; 190: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 21
	i32 3657292374, ; 191: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 38
	i32 3662115805, ; 192: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 9
	i32 3672681054, ; 193: Mono.Android.dll => 0xdae8aa5e => 113
	i32 3686075795, ; 194: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 17
	i32 3697841164, ; 195: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 196: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 66
	i32 3748608112, ; 197: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 87
	i32 3786282454, ; 198: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 54
	i32 3792276235, ; 199: System.Collections.NonGeneric => 0xe2098b0b => 81
	i32 3817368567, ; 200: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3823082795, ; 201: System.Security.Cryptography.dll => 0xe3df9d2b => 104
	i32 3841636137, ; 202: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 40
	i32 3849253459, ; 203: System.Runtime.InteropServices.dll => 0xe56ef253 => 101
	i32 3889960447, ; 204: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 205: System.Collections.Concurrent.dll => 0xe839deed => 79
	i32 3896760992, ; 206: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 56
	i32 3928044579, ; 207: System.Xml.ReaderWriter => 0xea213423 => 108
	i32 3931092270, ; 208: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 69
	i32 3955647286, ; 209: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 51
	i32 3980434154, ; 210: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 211: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 212: System.Memory => 0xeff49a63 => 93
	i32 4046471985, ; 213: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 46
	i32 4070331268, ; 214: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 13
	i32 4073602200, ; 215: System.Threading.dll => 0xf2ce3c98 => 107
	i32 4094352644, ; 216: Microsoft.Maui.Essentials.dll => 0xf40add04 => 48
	i32 4100113165, ; 217: System.Private.Uri => 0xf462c30d => 99
	i32 4102112229, ; 218: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4119206479, ; 219: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 20
	i32 4125707920, ; 220: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 221: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 39
	i32 4182413190, ; 222: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 64
	i32 4213026141, ; 223: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 87
	i32 4220564938, ; 224: FinLockerTaskList => 0xfb90b5ca => 78
	i32 4234116406, ; 225: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 22
	i32 4271975918, ; 226: Microsoft.Maui.Controls.dll => 0xfea12dee => 45
	i32 4292120959 ; 227: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 64
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [228 x i32] [
	i32 106, ; 0
	i32 1, ; 1
	i32 49, ; 2
	i32 31, ; 3
	i32 101, ; 4
	i32 54, ; 5
	i32 72, ; 6
	i32 30, ; 7
	i32 31, ; 8
	i32 85, ; 9
	i32 2, ; 10
	i32 50, ; 11
	i32 15, ; 12
	i32 61, ; 13
	i32 14, ; 14
	i32 2, ; 15
	i32 106, ; 16
	i32 93, ; 17
	i32 34, ; 18
	i32 26, ; 19
	i32 82, ; 20
	i32 60, ; 21
	i32 109, ; 22
	i32 98, ; 23
	i32 13, ; 24
	i32 7, ; 25
	i32 44, ; 26
	i32 10, ; 27
	i32 41, ; 28
	i32 21, ; 29
	i32 35, ; 30
	i32 58, ; 31
	i32 79, ; 32
	i32 1, ; 33
	i32 16, ; 34
	i32 4, ; 35
	i32 102, ; 36
	i32 96, ; 37
	i32 90, ; 38
	i32 43, ; 39
	i32 99, ; 40
	i32 89, ; 41
	i32 0, ; 42
	i32 83, ; 43
	i32 28, ; 44
	i32 61, ; 45
	i32 82, ; 46
	i32 32, ; 47
	i32 6, ; 48
	i32 71, ; 49
	i32 40, ; 50
	i32 3, ; 51
	i32 51, ; 52
	i32 91, ; 53
	i32 63, ; 54
	i32 84, ; 55
	i32 76, ; 56
	i32 109, ; 57
	i32 68, ; 58
	i32 7, ; 59
	i32 20, ; 60
	i32 18, ; 61
	i32 59, ; 62
	i32 92, ; 63
	i32 71, ; 64
	i32 55, ; 65
	i32 80, ; 66
	i32 90, ; 67
	i32 52, ; 68
	i32 44, ; 69
	i32 80, ; 70
	i32 89, ; 71
	i32 10, ; 72
	i32 5, ; 73
	i32 105, ; 74
	i32 25, ; 75
	i32 8, ; 76
	i32 26, ; 77
	i32 33, ; 78
	i32 65, ; 79
	i32 74, ; 80
	i32 36, ; 81
	i32 57, ; 82
	i32 94, ; 83
	i32 105, ; 84
	i32 103, ; 85
	i32 75, ; 86
	i32 95, ; 87
	i32 104, ; 88
	i32 53, ; 89
	i32 23, ; 90
	i32 88, ; 91
	i32 72, ; 92
	i32 41, ; 93
	i32 112, ; 94
	i32 60, ; 95
	i32 65, ; 96
	i32 18, ; 97
	i32 76, ; 98
	i32 75, ; 99
	i32 69, ; 100
	i32 12, ; 101
	i32 42, ; 102
	i32 29, ; 103
	i32 91, ; 104
	i32 81, ; 105
	i32 15, ; 106
	i32 37, ; 107
	i32 11, ; 108
	i32 63, ; 109
	i32 0, ; 110
	i32 14, ; 111
	i32 100, ; 112
	i32 62, ; 113
	i32 88, ; 114
	i32 103, ; 115
	i32 97, ; 116
	i32 86, ; 117
	i32 16, ; 118
	i32 47, ; 119
	i32 23, ; 120
	i32 43, ; 121
	i32 42, ; 122
	i32 98, ; 123
	i32 77, ; 124
	i32 94, ; 125
	i32 38, ; 126
	i32 8, ; 127
	i32 70, ; 128
	i32 27, ; 129
	i32 110, ; 130
	i32 95, ; 131
	i32 108, ; 132
	i32 28, ; 133
	i32 37, ; 134
	i32 19, ; 135
	i32 86, ; 136
	i32 111, ; 137
	i32 45, ; 138
	i32 25, ; 139
	i32 78, ; 140
	i32 77, ; 141
	i32 100, ; 142
	i32 57, ; 143
	i32 102, ; 144
	i32 50, ; 145
	i32 52, ; 146
	i32 46, ; 147
	i32 47, ; 148
	i32 73, ; 149
	i32 49, ; 150
	i32 29, ; 151
	i32 6, ; 152
	i32 55, ; 153
	i32 19, ; 154
	i32 73, ; 155
	i32 5, ; 156
	i32 48, ; 157
	i32 36, ; 158
	i32 24, ; 159
	i32 110, ; 160
	i32 74, ; 161
	i32 97, ; 162
	i32 85, ; 163
	i32 59, ; 164
	i32 34, ; 165
	i32 66, ; 166
	i32 112, ; 167
	i32 83, ; 168
	i32 12, ; 169
	i32 67, ; 170
	i32 107, ; 171
	i32 53, ; 172
	i32 96, ; 173
	i32 58, ; 174
	i32 68, ; 175
	i32 56, ; 176
	i32 111, ; 177
	i32 70, ; 178
	i32 39, ; 179
	i32 11, ; 180
	i32 84, ; 181
	i32 113, ; 182
	i32 24, ; 183
	i32 30, ; 184
	i32 4, ; 185
	i32 92, ; 186
	i32 3, ; 187
	i32 62, ; 188
	i32 67, ; 189
	i32 21, ; 190
	i32 38, ; 191
	i32 9, ; 192
	i32 113, ; 193
	i32 17, ; 194
	i32 33, ; 195
	i32 66, ; 196
	i32 87, ; 197
	i32 54, ; 198
	i32 81, ; 199
	i32 35, ; 200
	i32 104, ; 201
	i32 40, ; 202
	i32 101, ; 203
	i32 32, ; 204
	i32 79, ; 205
	i32 56, ; 206
	i32 108, ; 207
	i32 69, ; 208
	i32 51, ; 209
	i32 27, ; 210
	i32 9, ; 211
	i32 93, ; 212
	i32 46, ; 213
	i32 13, ; 214
	i32 107, ; 215
	i32 48, ; 216
	i32 99, ; 217
	i32 22, ; 218
	i32 20, ; 219
	i32 17, ; 220
	i32 39, ; 221
	i32 64, ; 222
	i32 87, ; 223
	i32 78, ; 224
	i32 22, ; 225
	i32 45, ; 226
	i32 64 ; 227
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}

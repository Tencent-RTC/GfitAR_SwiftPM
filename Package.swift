// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 3.4.244
// Summary: TCEffectPlayer
// Description: TCEffectPlayer is a video animation player SDK that provides powerful
// video effects and animation playback capabilities.

import PackageDescription

let package = Package(
    name: "GfitAR_SwiftPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "GfitAR_SwiftPM",
            targets: ["GfitAR_SwiftPM"]
        )
    ],
    targets: [
        // ==================== Binary Targets ====================

        .binaryTarget(
            name: "TCEffectPlayer",
            url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/MediaX/iOS/podspec/release/3.4/3.4.244/spm/TCEffectPlayer.xcframework.zip",
            checksum: "886cc416778858003303b5d77c639fcb3025001a7439d14a5b37f49fc75593c6"
        ),
        .binaryTarget(
            name: "libtcpag",
            url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/MediaX/iOS/podspec/release/3.4/3.4.244/spm/libtcpag.xcframework.zip",
            checksum: "6e57b173e9f74326aafa10dc3d6d6d9526bd21cd653fe29cc8a1de0c6eee6225"
        ),
        .binaryTarget(
            name: "TCMediaX",
            url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/MediaX/iOS/podspec/release/3.4/3.4.244/spm/TCMediaX.xcframework.zip",
            checksum: "aa9239de9d20934bdccdbc7ea01b2650dd6a5937f1765187be665f2522451bf3"
        ),
        .binaryTarget(
            name: "YTCommonXMagic",
            url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/MediaX/iOS/podspec/release/3.4/3.4.244/spm/YTCommonXMagic.xcframework.zip",
            checksum: "e0f06df47c8942d38a954f9ee12a087044d6dad17cbcbd0f32106f7e088d2bac"
        ),

        // ==================== Wrapper Target ====================

        .target(
            name: "GfitAR_SwiftPM",
            dependencies: [
                "TCEffectPlayer",
                "libtcpag",
                "TCMediaX",
                "YTCommonXMagic"
            ],
            path: "Sources/EffectPlayerWrapper",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("Security"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
    ]
)

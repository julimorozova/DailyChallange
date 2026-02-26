//
//  DMSans.swift
//  DailyChallange
//
//  Created by Julia Morozova on 25. 2. 2026..
//
import SwiftUI

enum DMSans: String {
    case regular = "DMSans-9ptRegular_Regular"
    case bold = "DMSans-9ptRegular_Bold"
    case medium = "DMSans-9ptRegular_Medium"
}

extension Text {
    func dnsans(_ font: DMSans, _ size: CGFloat) -> some View {
        self
            .font(.custom(font.rawValue, size: size))
    }
}

//let FamilyDMSans = [
//    "DMSans-9ptRegular",
//    "DMSans-9ptRegular_Regular",
//    "DMSans-9ptItalic",
//    "DMSans-9ptItalic_Italic",
//    "DMSans-9ptRegular_Thin",
//    "DMSans-9ptItalic_Thin-Italic",
//    "DMSans-9ptRegular_ExtraLight",
//    "DMSans-9ptItalic_ExtraLight-Italic", "DMSans-9ptRegular_Light", "DMSans-9ptItalic_Light-Italic", "DMSans-9ptRegular_Medium", "DMSans-9ptItalic_Medium-Italic", "DMSans-9ptRegular_SemiBold", "DMSans-9ptItalic_SemiBold-Italic", "DMSans-9ptRegular_Bold", "DMSans-9ptItalic_Bold-Italic", "DMSans-9ptRegular_ExtraBold", "DMSans-9ptItalic_ExtraBold-Italic", "DMSans-9ptRegular_Black", "DMSans-9ptItalic_Black-Italic"]

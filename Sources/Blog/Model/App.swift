import Foundation

enum App: CaseIterable {
    case rsl
    case easyCompta
    case wallabag
    case dlm

    var name: String {
        switch self {
        case .rsl:
            return "Radio Stream Live"
        case .easyCompta:
            return "Compta Facile"
        case .wallabag:
            return "Wallabag"
        case .dlm:
            return "Deviner le mot"
        }
    }

    var url: String {
        switch self {
        case .rsl:
            return "https://apps.apple.com/us/app/radio-stream-live/id1099771228?l=fr&ls=1"
        case .easyCompta:
            return "https://apps.apple.com/us/app/simplified-account/id1200288004?l=fr&ls=1"
        case .wallabag:
            return "https://apps.apple.com/us/app/wallabag-2-official/id1170800946?l=fr&ls=1"
        case .dlm:
            return "https://apps.apple.com/us/app/deviner-le-mot/id986540981?l=fr&ls=1"
        }
    }

    var img: String {
        switch self {
        case .rsl:
            return "/img/apps/rsl.png"
        case .easyCompta:
            return "/img/apps/bank.png"
        case .wallabag:
            return "/img/apps/wallabag.png"
        case .dlm:
            return "/img/apps/dlm.jpg"
        }
    }
}

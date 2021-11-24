import Foundation

enum App: CaseIterable {
    case barista
    case mazout
    case easyCompta
    case wallabag
    case dlm

    var name: String {
        switch self {
        case .barista:
            return "Barista - Caffeine Tracker"
        case .mazout:
            return "Mazout'"
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
        case .barista:
            return "https://apple.co/3oxhXJe"
        case .mazout:
            return "https://apps.apple.com/us/app/id1442054061"
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
        case .barista:
            return "/img/apps/barista.jpg"
        case .mazout:
            return "/img/apps/mazout.png"
        case .easyCompta:
            return "/img/apps/bank.png"
        case .wallabag:
            return "/img/apps/wallabag.png"
        case .dlm:
            return "/img/apps/dlm.jpg"
        }
    }
}

//
//  Images+Colors+Names.swift
//  SplitviewDemo
//
//  Created by Arghadeep  on 16/02/21.
//

import UIKit

enum Split {
    case camera, city, animals, flowers, stands, urban
    
    var image: UIImage {
        switch self {
        case .camera:
            return UIImage(named: "1")!
        case .city:
            return UIImage(named: "2")!
        case .animals:
            return UIImage(named: "3")!
        case .flowers:
            return UIImage(named: "4")!
        case .stands:
            return UIImage(named: "5")!
        case .urban:
            return UIImage(named: "6")!
        }
    }
    
    var name: String {
        switch self {
        case .camera:
            return "CAMERA"
        case .city:
            return "CITY"
        case .animals:
            return "ANIMALS"
        case .flowers:
            return "FLOWERS"
        case .stands:
            return "STANDS"
        case .urban:
            return "URBAN"
        }
    }
    
    var color: UIColor {
        switch self {
        case .camera:
            return #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        case .city:
            return #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        case .animals:
            return #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        case .flowers:
            return #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        case .stands:
            return #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        case .urban:
            return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
    }
}

class SplitModel {
    let name: String
    let image: UIImage
    let color: UIColor
    
    init(split: Split) {
        self.name = split.name
        self.image = split.image
        self.color = split.color
    }
    
}


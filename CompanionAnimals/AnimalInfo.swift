//
//  AnimalInfo.swift
//  CompanionAnimals
//
//  Created by yongseopKim on 2022/11/11.
//

import UIKit

struct AnimalInfo: Codable {
    let name: String
    let animalDescription: String
    let imageName: String
    
    static func decode(from assetName: String) -> AnimalInfo? {
        guard let asset: NSDataAsset = NSDataAsset(name: assetName) else {
            print("faild asset load")
            return nil
        }
        do {
            let decoder: PropertyListDecoder = PropertyListDecoder()
            return try decoder.decode(AnimalInfo.self, from: asset.data)
        } catch {
            print("faild data decoding")
            print(error.localizedDescription)
            return nil
        }
    }
}

//
//  DiaryItems.swift
//  Enikki
//
//  Created by tiking on 2021/08/10.
//

import CoreData
import Foundation

public class DiaryItems: NSManagedObject, Identifiable {
    @NSManaged public var cookedAt: String
    @NSManaged public var text: String
    @NSManaged public var image: Data

    static func getAllMemoItems() -> NSFetchRequest<Enikki> {
        let request: NSFetchRequest<Enikki> = Enikki.fetchRequest() as! NSFetchRequest<Enikki>
        request.sortDescriptors = [NSSortDescriptor(key: "createdAt", ascending: true)]
        return request
    }
}


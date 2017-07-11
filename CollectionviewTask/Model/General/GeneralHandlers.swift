//
//  GeneralHandlers.swift
//  CollectionviewTask



import UIKit

class GeneralHandlers: NSObject {

}


enum CellHandler: String{
    
    case myTestCell = "MyCollectionViewCell"
    
    
    var title: String{
    return self.rawValue
    }
    
}

//
//  ViewController.swift
//  CollectionviewTask
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTestCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//MARK: Collectionview Delegate , Datasource and Layouts 

extension ViewController: UICollectionViewDelegate {
    
    
    
    
}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellHandler.myTestCell.title, for: indexPath) as! MyCollectionViewCell
        
        cell.lblTitle.text = "\(indexPath.row)"
       
        
        return cell
    }
}


extension ViewController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: collectionView.frame.size.width - CGFloat(20), height: collectionView.frame.size.height)
}
}



//
//  HomeController.swift
//  TwitterClone
//
//  Created by Arthur Pujols on 8/29/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit

// Creating cell class and view layout
class WordCell: UICollectionViewCell {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupView()
	}
	
	let wordLabel: UILabel = {
		let label = UILabel()
		label.text = "TEST TEST TEST"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	// Setting cell layout and style
	func setupView() {
		backgroundColor = .yellow
		addSubview(wordLabel)
		wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
		wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
		wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
		wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}


class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
	
	// VARIABLES
	// Collection View's reuse identifier
	let cellId = "cellId"
	let headerId = "headerId"
	let footerId = "footerId"
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		collectionView?.backgroundColor = .white
		collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellId)
		collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
		collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerId)
	}
	
	
	
	// Collection View functions for layout
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 4
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
		return cell
	}
	
	// Added CVDelegate and set size parameters per cell
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: view.frame.width, height: 50)
	}
	
	
	override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		
		
		if kind == UICollectionElementKindSectionHeader {
			let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader.self, withReuseIdentifier: headerId, for: indexPath)
			header.backgroundColor = .blue
			return header
		} else {
			let footer = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter.self, withReuseIdentifier: footerId, for: indexPath)
			footer.backgroundColor = .green
			return footer
		}
		
		
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		return CGSize(width: view.frame.width, height: 50)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
		let footer = CGSize(width: view.frame.width, height: 100)
		return footer
	}
	
	
}


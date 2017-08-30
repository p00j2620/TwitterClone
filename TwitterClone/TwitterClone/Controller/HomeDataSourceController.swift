//
//  DataSourceController.swift
//  TwitterClone
//
//  Created by Arthur Pujols on 8/30/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import LBTAComponents



class HomeDataSoureController: DatasourceController {
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let homeDataSource = HomeDataSource()
		self.datasource = homeDataSource
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		return CGSize(width: view.frame.width, height: 50)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
		return CGSize(width: view.frame.width, height: 100)
	}
	
}

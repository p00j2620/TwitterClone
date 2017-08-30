//
//  HomeDataSource.swift
//  TwitterClone
//
//  Created by Arthur Pujols on 8/30/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
	
	let users = ["user1", "user2", "user3", "user4"]
	
	
	override func headerClasses() -> [DatasourceCell.Type]? {
		return [UserHeader.self]
	}
	
	override func footerClasses() -> [DatasourceCell.Type]? {
		return [UserFooter.self]
	}
	
	override func cellClasses() -> [DatasourceCell.Type] {
		return [UserCell.self]
	}
	
	
	
	override func item(_ indexPath: IndexPath) -> Any? {
		return users[indexPath.item]
	}
	
	override func numberOfItems(_ section: Int) -> Int {
		return users.count
	}
}


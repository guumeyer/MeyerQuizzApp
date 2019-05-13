//
//  TableViewHelpers.swift
//  MeyerQuizz
//
//  Created by Meyer, Gustavo on 5/12/19.
//  Copyright © 2019 Gustavo Meyer. All rights reserved.
//

import UIKit

extension UITableView {
    func cell(at row: Int) -> UITableViewCell? {
        return dataSource?.tableView(self, cellForRowAt: IndexPath(row: row, section: 0))
    }

    func title(at row: Int) -> String? {
        return cell(at: row)?.textLabel?.text
    }

    func select(row: Int) {
        let indexPath = IndexPath(row: row, section: 0)
        // Test minique multiple selection
        selectRow(at: indexPath, animated: false, scrollPosition: .none)
        delegate?.tableView?(self, didSelectRowAt: indexPath)
    }

    func deselect(row: Int) {
        let indexPath = IndexPath(row: row, section: 0)
        deselectRow(at: indexPath, animated: false)
        delegate?.tableView?(self, didDeselectRowAt: indexPath)
    }
}

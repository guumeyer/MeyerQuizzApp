//
//  Copyright © 2019 Gustavo Meyer. All rights reserved.
//

import UIKit

extension UITableView {

    /// Registers the UITableViewCell based on object.Type
    ///
    /// - Parameter type: The object type
    /// - Examples:
    ///    tableView.register(CorrectAnswerCell.self)
    ///    tableView.register(WrongAnswerCell.self)
    func register(_ type: UITableViewCell.Type) {
        let className = String(describing: type)
        register(UINib(nibName: className, bundle: nil), forCellReuseIdentifier: className)
    }

    /// Dequeues reusable cell based on object.Type
    ///
    /// - Parameter type: The object type
    /// - Returns: The T where extends from UITableViewCell
    /// - Examples:
    ///     let cell = tableView.dequeueReusableCell(for: CorrectAnswerCell.self)!
    func dequeueReusableCell<T: UITableViewCell>(for type: T.Type) -> T? {
        let className = String(describing: type)
        return dequeueReusableCell(withIdentifier: className) as? T
    }
}

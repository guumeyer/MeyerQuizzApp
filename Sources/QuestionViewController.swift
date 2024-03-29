//
//  Copyright © 2019 Gustavo Meyer. All rights reserved.
//

import Foundation
import UIKit

final class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    typealias SelectionHandler = ([String]) -> Void
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!

    private var question = ""
    private var options = [String]()
    private var selection: SelectionHandler?
    private let reuseIdentifier = "Cell"

    convenience init(question: String, options: [String], selection: @escaping SelectionHandler) {
        self.init()
        self.question = question
        self.options = options
        self.selection = selection
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        headerLabel.text = question
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueCell(in: tableView)
        cell.textLabel?.text = options[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if tableView.allowsMultipleSelection {
            selection?(selectOptions(in: tableView))
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selection?(selectOptions(in: tableView))
    }

    private func dequeueCell(in tableView: UITableView) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) {
            return cell
        }
        return UITableViewCell(style: .default, reuseIdentifier: reuseIdentifier)
    }

    private func selectOptions(in tableView: UITableView) -> [String] {
        guard let indexPaths = tableView.indexPathsForSelectedRows else { return [] }

        return indexPaths.map { options[$0.row] }
    }
}

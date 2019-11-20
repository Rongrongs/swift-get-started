import UIKit

class ViewController: UIViewController {

  // MARK: Outlets
  @IBOutlet weak var startLabel: UILabel!
  @IBOutlet weak var goalLabel: UILabel!
  @IBOutlet weak var imageView: UIImageView!

  // MARK: Model
  var start: Int = 0
  var goal: Int = 15

  // MARK: Actions
  @IBAction func goButton(_ sender: UIButton) {
    start += 1
    updateUI()
  }

	override func viewDidLoad() {
		super.viewDidLoad()
    updateUI()
	}

  // MARK: Private methods
  private func updateUI() {
    // Lets update the labels
    startLabel.text = String(start)
    goalLabel.text = String(goal)


    if goal == start {
      imageView.isHidden = false
    }
  }
}

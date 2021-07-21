import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstOptionButton: UIButton!
    @IBOutlet weak var secondOptionButton: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func selectedOption(_ sender: UIButton) {
        let userOption = sender.currentTitle!
        story.nextStory(userOption)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = story.getStory()
        firstOptionButton.setTitle(story.getFirstOption(), for: .normal)
        secondOptionButton.setTitle(story.getSecindOption(), for: .normal)
    }
}


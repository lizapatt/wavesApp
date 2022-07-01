import UIKit

class timerViewController:UIViewController
{
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var plusfiveButton: UIButton!
    
    @IBOutlet weak var minusfiveButton: UIButton!
    
    var timer = Timer()
    var seconds = 60
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func startbutton(_ sender: Any)
    {
        //Make sure there arn't any other timers running
        timer.invalidate()
        //Create the timer
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,  selector: #selector(timerViewController.timerClass),  userInfo: nil, repeats: true)
    }
    @IBAction func pausebutton(_ sender: Any)
    {
        timer.invalidate()
    }
    @IBAction func resetbutton(_ sender: Any)
    {
        timer.invalidate()
        seconds = 60
        timerLabel.text = String(seconds)
    }
    @IBAction func plusfivebutton(_ sender: Any)
    {
        seconds = seconds + 5
        timerLabel.text = String(seconds)
        
    }
    @IBAction func minusfivebutton(_ sender:Any)
    {
        seconds = seconds - 5
        timerLabel.text = String(seconds)
    }
    @objc func timerClass()
    {
        seconds -= 1
        timerLabel.text = String(seconds)
        
        if(seconds == 0)
        {
            timer.invalidate()
        }
    }
    
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
*/


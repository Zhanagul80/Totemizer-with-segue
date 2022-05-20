//
//  ViewController.swift
//  Totemizer with segue
//
//  Created by Zhanagul Tynysbek on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let totems: [Totems] = [
        Totems(image: #imageLiteral(resourceName: "Bat"), name: "Bat", facts: "The Bat arriving in your life signifies an omen of change. He asks that you pay attention to signs around you. The transition may seem frightening at first, but you must let go of your old habits and patterns that no longer serve your higher calling. They will only hinder your growth."),
        Totems(image: #imageLiteral(resourceName: "Dragon"), name: "Dragon", facts: "The Dragon is cloaked with mystique and sewn together by the many legends and folklore surrounding its history. This powerful and mesmerizing creature has been the inspiration for countless books, poems, art, movies and other expressive mediums. The Dragon has been well respected in many cultures and is either honored or greatly feared."),
        Totems(image: #imageLiteral(resourceName: "Bear"), name: "Bear", facts: "In the kingdom of spirit animals, the bear is emblematic of grounding forces and strength. This animal has been worshiped throughout time as a powerful totem, inspiring those who need it the courage to stand up against adversity. As a spirit animal in touch with the earth and the cycles of nature, it is a powerful guide to support physical and emotional healing."),
        Totems(image: #imageLiteral(resourceName: "Eagle"), name: "Eagle", facts: "The Eagle spirit animal is an inspiring messenger. With the ability to soar to heights other birds merely dream of, the Eagle is a powerful animal totem that offers lessons about looking closely at the most minute of details in order to see life from a broader perspective. When this graceful hunter comes into your life, it’s time to look inward with a careful eye.  "),
        Totems(image: #imageLiteral(resourceName: "Butterfly"), name: "Butterfly", facts: "The butterfly is one of the most emblematic totem animals symbolizing personal transformation. If you see the butterfly as your totem or spirit animal, pay attention to the areas in your life or personality that are in need of profound change or transformation."),
        Totems(image: #imageLiteral(resourceName: "Cardinal"), name: "Cardinal", facts: "The Cardinal spirit animal is a spirited creature with a zest for adventure. The Cardinal symbolizes all that makes you special and unique; the color of this bird reflects your bright personality, and it can also represent significant personal transformation, progress, and movement into higher levels of consciousness."),
        Totems(image: #imageLiteral(resourceName: "Cat"), name: "Cat", facts: "The cat totem wisdom tells us about timing in action and courage to explore the unknown. Those who have the cat as spirit animal may be encouraged to develop balance between independence and time of togetherness. Harmonious relationships between light and dark, action and observation are also attributes of cat spirit. Let’s follow this spirit animal and embark on a profound journey of self discovery."),
        Totems(image: #imageLiteral(resourceName: "Cougar"), name: "Cougar", facts: "If cougar has approached you, it is an indication that you have come into your own power. Now is the time to take the lead of a situation. Now is the time to be strong. Cougar is here to let you know that now is the time to leap into all the opportunities made available to you. Using the power of intentions, be clear with your purpose and define where you are heading."),
        Totems(image: #imageLiteral(resourceName: "Dolphin"), name: "Dolphin", facts: "The dolphin spirit animal represents harmony and balance. Dolphins are both highly intelligent and closely in tune with their instincts, striking a balance between the two states. Dolphins are also a symbol of protection and of resurrection. Their playful nature is a reminder that everyone needs to approach life with humor and joy. People who identify with the dolphin totem are usually peaceful and gentle, but with a deep inner strength."),
        Totems(image: #imageLiteral(resourceName: "Lion"), name: "Lion", facts: "In the realm of spirit animals, the lion wins the prize for most relentless fighter in the face of life challenges. The lion spirit animal represents courage, strength in overcoming difficulties. The presence of this power animal could also mean that something “wild” or difficult to control is happening. As such, lions symbolizes emotions that are difficult to manage, such a anger or fear.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showTotem", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? DetailViewController {
            
            let randomImage = totems.randomElement()
            resultVC.imageForTotem = randomImage?.image
            resultVC.textForLabel = randomImage?.name
            resultVC.textForFact = randomImage?.facts
            
        }
    }
    
    
}


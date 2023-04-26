//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain
{
    var storyNumber: String
    
    let Stories = [Story(title: "Issız bir ormanda yürüyorsun. Karşında iki yola ayrılan bir patika var.",choice1: "Sağdan git", choice2: "Soldan git", past: "0"),
                   Story(title: "Karşına ayı çıktı", choice1: "Ölü Taklidi yap", choice2: "En yakın ağaca tırman", past: "1"),
                   Story(title: "Biraz yürüdükten sonra terk edilmiş harabe bir kulube gördün", choice1: "Kulübeye gir", choice2: "Yola devam et", past: "2"),
                   Story(title: "Ayı yanına yaklaştı ve seni kokluyor", choice1: "Çakıyla saldır", choice2: "Ölü taklidi yapmaya devam et", past: "1"),
                   Story(title: "Ayı tırmandığın ağacın altında biraz homurdandıktan sonra uzakladan gelen bir silah sesinin ardından öldü", choice1: "Ağaçtan in", choice2: "Ağaçta beklemeye devam et", past: "2"),
                   Story(title: "Çakıyla ayıyı öldürmeyi beceremedin ve öldün" ,choice1: "Son", choice2: "Son", past: "1"),
                   Story(title: "Kulübede yeni öldürülmüş bir ceset buldun", choice1: "Ceseti incele", choice2: "Etrafa bakınmaya devam et", past: "1"),
                   Story(title: "", choice1: <#T##String#>, choice2: <#T##String#>, past: <#T##String#>)
                   Story(title: "Ayı öldüğüne inandı ve başından gitti", choice1: "Sessizce oradan uzaklaş", choice2: "Ayıyı takip et", past: "2"),
                   Story(title: "Ayıyı öldüren Avcı yanına geldi ve seni evine davet etti", choice1: "Kabul et", choice2: "Reddet", past: "1"),
                   Story(title: "Ayıyı öldüren avcı ağacın altından sana seslendi \"Artık güvendesin inebilirsin\" ", choice1: "Ağaçtan in", choice2: "Adamın üstüne atla", past: "2"),
    ]
    
    var currentStory: Int
    
    init(storyNumber: String, currentStory: Int) {
        self.storyNumber = storyNumber
        self.currentStory = currentStory
    }
    
    mutating func nextStory(_ userChoice: String)
    {
        if userChoice == "Son"{
            
        }

        if userChoice == Stories[currentStory].choice1 && Stories[currentStory].past == "1"
        {
            storyNumber.append("1")
            self.currentStory += 2
        }
        else if userChoice == Stories[currentStory].choice2 && Stories[currentStory].past == "2"
        {
            storyNumber.append("2")
            self.currentStory += 2
        }
        print(storyNumber)
    }
    
}

import AudioToolBox

func playAudio(nameAudio: String, formatAudio: String){

    if let soundURL = Bundle.main.url(forResource: nameAudio, withExtension: formatAudio){
        var mySound: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
        AudioServicesPlaySystemSound(mySound)
    }

}

import AudioToolBox


/*

- No longer than 30 seconds in duration
- In linear PCM or IMA4 (IMA/ADPCM) format
- Packaged in a .caf, .aif, or .wav file

*/

func playSystemSound(nameAudio: String, formatAudio: String){

    if let soundURL = Bundle.main.url(forResource: nameAudio, withExtension: formatAudio){
        var mySound: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
        AudioServicesPlaySystemSound(mySound)
    }

}

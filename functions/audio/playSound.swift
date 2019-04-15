import AVFoundation

func playSound(audioName: String, audioExtension: String){
    var player: AVAudioPlayer!
    let soundFile = Bundle.main.url(forResource:audioName , withExtension: audioExtension)

    do {
        player = try AVAudioPlayer(contentsOf: soundFile!)

    } catch {
        print(error)
    }
    player.play()
}

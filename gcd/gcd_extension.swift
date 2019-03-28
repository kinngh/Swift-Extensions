
extension DispatchQueue {

    static func background(delay: Double = 0.0, background: (()->Void)? = nil, finished: (() -> Void)? = nil) {
        DispatchQueue.global(qos: .background).async {
            background?()
            if let finished = finished {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
                    finished()
                })
            }
        }
    }

}


/* Usage */

DispatchQueue.background(delay: 10.0, background: {
    //do something in bg
}, finished: {
    //when bg is done, do soemthing after delay seconds
})



DispatchQueue.background(background: {
    //do something in background
}, finished:{
    //when bg job is done, do this in main thread
})


DispatchQueue.background(delay: 10.0, finished:{
    //do something in main thread after delay seconds
})

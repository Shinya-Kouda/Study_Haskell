data TrafficLight = Red | Yellow | Green--Redたちはデータ。Intの13とかStringの"Hello"とかと同じ立場

instance Eq TrafficLight where
    Red == Red       = True--Eq型クラスに実装される==をTrafficLight型のために再定義。/=は不要（相互再帰で定義されているので）
    Yellow == Yellow = True
    Green == Green   = True
    _ == _           = False--TrafficLight型の要素で==となるのは上の行まで。それ以外をFalseと定義

instance Show TrafficLight where
    show Red    = "Red light"--Show型クラスに実装されるshowをTrafficLight型のために再定義
    show Yellow = "Yellow light"
    show Green  = "Green light"


func foo(what: (String) -> ()) {
    print("pupki")
    what("Swift")
}

foo{ text in
    print("클로저 안에서 출력: \(text)")
}

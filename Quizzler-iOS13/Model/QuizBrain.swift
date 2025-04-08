//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by 장동하 on 4/2/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q: "세종대왕이 창제한 문자는 무엇인가요?", a: "훈민정음", c: ["한글", "한자", "훈민정음", "고려문자"]),
        Question(q: "고려를 건국한 인물은 누구인가요?", a: "왕건", c: ["이성계", "김춘추", "왕건", "문무왕"]),
        Question(q: "삼국통일을 이룬 신라의 왕은?", a: "문무왕", c: ["진흥왕", "문무왕", "무열왕", "성덕왕"]),
        Question(q: "6.25 전쟁이 발발한 해는?", a: "1950년", c: ["1945년", "1950년", "1953년", "1960년"]),
        Question(q: "3.1 운동이 일어난 해는?", a: "1919년", c: ["1910년", "1919년", "1925년", "1932년"]),
        Question(q: "일제강점기는 몇 년도에 시작되었나요?", a: "1910년", c: ["1910년", "1895년", "1905년", "1945년"]),
        Question(q: "광개토대왕은 어느 나라의 왕인가요?", a: "고구려", c: ["백제", "신라", "고구려", "가야"]),
        Question(q: "조선을 건국한 왕은 누구인가요?", a: "이성계", c: ["이방원", "이성계", "정도전", "세종"]),
        Question(q: "을사늑약은 몇 년도에 체결되었나요?", a: "1905년", c: ["1904년", "1905년", "1910년", "1895년"]),
        Question(q: "고조선을 건국한 인물은?", a: "단군", c: ["주몽", "단군", "이성계", "온조"]),

        Question(q: "훈민정음을 반포한 해는?", a: "1446년", c: ["1443년", "1446년", "1392년", "1500년"]),
        Question(q: "백제를 건국한 인물은?", a: "온조", c: ["온조", "주몽", "비류", "우태"]),
        Question(q: "고려의 국교는 무엇이었나요?", a: "불교", c: ["유교", "불교", "도교", "천주교"]),
        Question(q: "임진왜란 당시 활약한 수군 장군은?", a: "이순신", c: ["이순신", "권율", "김시민", "정봉수"]),
        Question(q: "조선의 마지막 왕은 누구인가요?", a: "순종", c: ["고종", "순종", "흥선대원군", "철종"]),
        Question(q: "삼국사기를 집필한 사람은?", a: "김부식", c: ["일연", "김부식", "최치원", "정약용"]),
        Question(q: "삼국유사를 집필한 인물은?", a: "일연", c: ["김부식", "일연", "정도전", "설총"]),
        Question(q: "조선시대 실학자 정약용이 설계한 기계는?", a: "거중기", c: ["화차", "거중기", "기중기", "수레"]),
        Question(q: "신라의 골품제도에서 진골은 어떤 계층인가요?", a: "귀족층", c: ["노비층", "상민층", "귀족층", "왕족층"]),
        Question(q: "대한민국 임시정부는 어느 도시에서 수립되었나요?", a: "상하이", c: ["서울", "하얼빈", "상하이", "만주"]),

        Question(q: "청동기 시대의 대표 유물은?", a: "비파형 동검", c: ["비파형 동검", "고인돌", "돌무지무덤", "철제 무기"]),
        Question(q: "고려시대 팔만대장경은 어떤 재난을 피하려고 만든 것인가요?", a: "몽골 침입", c: ["왜구 침입", "몽골 침입", "병자호란", "왜란"]),
        Question(q: "조선 시대에 왕의 비서기관 역할을 한 기구는?", a: "승정원", c: ["의금부", "사헌부", "승정원", "홍문관"]),
        Question(q: "갑신정변은 몇 년도에 일어났나요?", a: "1884년", c: ["1894년", "1884년", "1910년", "1876년"]),
        Question(q: "고려를 멸망시키고 조선을 세운 인물은?", a: "이성계", c: ["이방원", "이성계", "최영", "정도전"]),
        Question(q: "백성들을 위한 최초의 신문은?", a: "독립신문", c: ["조선일보", "대한매일신보", "독립신문", "매일경제"]),
        Question(q: "조선의 유교 교육기관 중 국가 운영 기관은?", a: "성균관", c: ["성균관", "향교", "서원", "서당"]),
        Question(q: "정조가 만든 왕립 도서관은?", a: "규장각", c: ["장서각", "규장각", "홍문관", "정원각"]),
        Question(q: "조선 시대 실학자 박제가가 주장한 학문은?", a: "북학", c: ["남학", "북학", "성리학", "실증학"]),
        Question(q: "신라가 삼국을 통일한 시기의 왕은?", a: "문무왕", c: ["진흥왕", "무열왕", "문무왕", "성덕왕"])
    ]

    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        }else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else{
            questionNumber = 0
            score = 0
        }
    }
    
    func getChoices() -> [String] {
        return quiz[questionNumber].c
    }
    
}

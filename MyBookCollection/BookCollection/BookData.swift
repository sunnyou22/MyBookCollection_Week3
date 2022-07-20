//
//  BookData.swift
//  MobileLibrary
//
//  Created by Junhee Yoon on 2022/07/20.
//

import Foundation

// 별도로 같은 종류의 정보를 모아서 담아두기 좋음
struct Book {
    var title: String
    var cover: String
    var grade: Double
}

// 애셋말고 링크로 연결해보기
// 만약에 연결된 링크에 이미지가 사라지면 사라지는 것?
struct BookInfo {
    let books: [Book] = [ // 고해상도여야함 애셋이랑 비슷한 원리인듯 넣으려는 이미지뷰의 크기와 비슷하거나 고해상도거나
        Book(title: "기분이 태도가 되지않게", cover: "https://simage.kyobobook.co.kr/images/book/large/658/l9788901243658.jpg", grade: 8.6),
        Book(title: "다섯번째 산", cover: "https://simage.kyobobook.co.kr/images/book/large/485/l9788954687485.jpg", grade: 10.0),
        Book(title: "달러구트 꿈 백화점", cover: "https://simage.kyobobook.co.kr/images/book/large/909/l9791165341909.jpg", grade: 9.2),
        Book(title: "미드나잇 라이브러리", cover: "https://simage.kyobobook.co.kr/images/book/large/556/l9791191056556.jpg", grade: 9.3),
        Book(title: "소크라테스 익스프레스", cover: "https://simage.kyobobook.co.kr/images/book/large/922/l9791190030922.jpg", grade: 9.6),
        Book(title: "아몬드", cover: "https://simage.kyobobook.co.kr/images/book/large/753/l9788936438753.jpg", grade: 9.9),
        Book(title: "오늘밤 세계에서 사랑이 사라진다해도", cover: "https://simage.kyobobook.co.kr/images/book/large/297/l9791191043297.jpg", grade: 9.2),
        Book(title: "완전한 행복", cover: "https://simage.kyobobook.co.kr/images/book/large/280/l9791167370280.jpg", grade: 9.14),
        Book(title: "인간실격", cover: "https://simage.kyobobook.co.kr/images/book/large/033/l9788937461033.jpg", grade: 9.4),
        Book(title: "질서너머", cover: "https://simage.kyobobook.co.kr/images/book/large/599/l9788901249599.jpg", grade: 9.0),
    ]
}


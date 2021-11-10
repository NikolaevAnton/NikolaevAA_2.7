//
//  Person.swift
//  NikolaevAA_2.7
//
//  Created by Anton Nikolaev on 10.11.2021.
//

struct Person {
    let name: String
    let phone: String
    let email: String
}

extension Person {
    static func getPersons() -> [Person] {
        
        var personsArr:[Person] = []
        
        var namesArr = DataManager.names
        var phoneArr = DataManager.phones
        var emailArr = DataManager.emails
        
        for _ in 1...10 {
            let randomName = namesArr.randomElement()!
            namesArr.remove(at: namesArr.index(of: randomName)!)
            let randomPhone = phoneArr.randomElement()!
            phoneArr.remove(at: phoneArr.index(of: randomPhone)!)
            let randomEmail = emailArr.randomElement()!
            emailArr.remove(at: emailArr.index(of: randomEmail)!)
            personsArr.append(Person(name: randomName, phone: randomPhone, email: randomEmail))
        }
        
        return personsArr
    }
}


class DataManager {
    
    static let names = [
        "Айзек Азимов",
        "Рей Брэдбери",
        "Сергей Лукьяненко",
        "Роберт Ханлайн",
        "Роджер Желязны",
        "Терри Пратчет",
        "Стивен Кинг",
        "Анджей Сапковский",
        "Говард Лафкрафт",
        "Жюль Верн"
    ]
    
    static let emails = [
        "dogs@yandex.ru",
        "cats@mail.ru",
        "birds@google.com",
        "elephant@yahoo.com",
        "user1@yandex.ru",
        "myPasswordIsPassword@mail.ru",
        "likeKing@google.com",
        "greaterWriter@yahoo.com",
        "amber@google.ru",
        "guliver@mail.ru"
    ]
    
    static let phones = [
        "89871034578",
        "69879994578",
        "59871034111",
        "19000034578",
        "39871034222",
        "29811111578",
        "09871034655",
        "99871098258",
        "19901034871",
        "89826716578"
    ]
    
}

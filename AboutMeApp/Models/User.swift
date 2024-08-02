//
//  User.swift
//  AboutMeApp
//
//  Created by Winky51 on 27.07.2024.
//

struct User {
    let name: String
    let password: String
    let person: Person
    
    static func getPersons() -> User {
        User(
            name: "Admin",
            password: "admin",
            person: Person(
                name: "Александр",
                firstName: "Белов",
                gender: "Мужской",
                age: 26,
                personPhoto: "photo.jpg",
                birdDay: "2 сентября 1997г.",
                familyStatus: "Женат",
                work: "Министерство обороны",
                info: """
    Родился в Мурманской области город Заполярный, в данный момент находится в Санкт-Петербурге в командировке по работе и проходить обучение на портале swiftbook.

    Есть животные: 3 кота, 2 собаки, 1 крыса.

    По образованию автомеханик, но спустя 3 года работы в этой сфере я понял что данная специальность должна оставаться в качестве хобби, пообщавшись с двоюродным братом (Ведущий разработчик в СБИС) заинтересовался IOS разработкой. Так как брат самоучка, он порекомендовал бесплатные курсы на swiftbook. До покупки профессии я написал свое первое, отвратительное приложение работающее с сетью, так как в интернете полным полно мусора я решился на приобретение профессии и исходя уже из полученных знаний буду переписывать свой первый проект.

    В дальнейшем после обучения я хочу устроиться в сферу разработки и переехать в Санкт-Петербург
"""
            )
        )
    }
}

struct Person {
    let name: String
    let firstName: String
    let gender: String
    let age: Int
    let personPhoto: String
    let birdDay: String
    let familyStatus: String
    let work: String
    let info: String
}




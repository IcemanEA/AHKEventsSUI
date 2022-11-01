//
//  DataStore.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let events: [Event] = [
        Event(
            id: UUID(uuidString: "a111b4a7-b8f4-4b3b-8e0e-32a8b2a7237c")!,
            nameRU: "Осенняя бизнес встреча 2022 в Санкт-Петербурге",
           // date: try! Date("16.09.2022 18:15:00", strategy: .dateTime),
            date: Date(),
            image: "https://images.admiralcloud.com/v3/deliverEmbed/500e2885-8eb0-4c56-88e4-40f6cc4e962c/image/autocrop/1280/720/1?poc=true",
            descriptionRU: "Российско-Германская внешнеторговая палата продолжает серию нетворкинг-встреч в Санкт-Петербурге и приглашает Вас на «Осеннюю встречу ВТП» 16 сентября, которая пройдет на площадке «Альпенхаус».",
            addressRU: """
Альпенхаус
Южная дор., 17
Санкт-Петербург
197110 Россия
""",
            programRU: """
* Презентация результатов опроса ВТП по деловому климату
* Открытая дискуссия «Цифровизация и клиентские практики» с участием спикеров Mango Office, Kept и Охта-парк
* Нетворкинг с использованием обновленного приложения AHK Matchmaking App
* Неформальное общение
* Живая музыка

Начало деловой программы – в 18:00. Дресс-код: smart casual.

Оставайтесь на связи с партнерами и узнавайте о важнейших обновлениях в сфере бизнеса на мероприятиях Российско-Германской ВТП в Санкт-Петербурге!
""",
            membersCount: 134,
            copmaniesCount: 80
        ),
    Event(
        id: UUID(uuidString: "88cdab34-18cc-4020-bc69-05bd97c24191")!,
        nameRU: "Заседание рабочей группы по вопросам персонала",
//        date: try! Date("27.09.2022 15:00:00", strategy: .dateTime),
        date: Date(),
        image: "https://images.admiralcloud.com/v5/deliverEmbed/697c462f-6ad8-4c4c-b016-489a098b078b/image",
        descriptionRU: "",
        addressRU: """
Императорский фарфоровый завод
Обуховской Обороны, д 151
Санкт-Петербург
192171 Россия
""",
        programRU: """
1. Кураторская экскурсия по галерее современного фарфора АО «Императорский фарфоровый завод»

2. Презентация книги «HR без стереотипов» издательства «Альпина Паблишер»

Галина Подовжняя, автор, директор по управлению персоналом компании 3М в России и СНГ

3. Культура мотивации

Юлия Меньшикова, управление корпоративной культурой и талантами Группы компаний СЧАСТЬЕ

4. Обзор текущей ситуации от руководства рабочей группы
""",
        membersCount: 24,
        copmaniesCount: 5
    )
//    Event(
//        id: UUID(uuidString: "")!,
//        nameRU: "",
//        date: try! Date("", strategy: .dateTime),
//        image: "",
//        descriptionRU: "",
//        addressRU: """
//
//""",
//        programRU: """
//
//""",
//        membersCount: 24,
//        copmaniesCount: 5
//    )
    ]

    let members: [Member] = [
        Member(
            id: UUID(),
            email: "ya@ya.ru",
            nameRU: "Марат",
            surnameRU: "Хусналин",
            companyRU: "Сланцевский цементный завод ЦЕСЛА ОАО",
            positionRU: "Руководитель Финансово-экономического отдела",
            phone: nil,
            photo: "https://storage.googleapis.com/glide-prod.appspot.com/uploads-v2/ONMlxATjzlQOKMK8lp1B/pub/Wdy1ugjK4BWDHF3WobwP.jpeg",
//                "https://storage.googleapis.com/glide-prod.appspot.com/uploads-v2/ONMlxATjzlQOKMK8lp1B/pub/jOFwIEL73WembDglJpTt.jpeg",
            language: "Русский",
            showContacts: false,
            allowInvitations: false,
            allowNotifications: false,
            companyID: nil,
            eventID: nil
        ),
        Member(
            id: UUID(),
            email: "ya@ya.ru",
            nameRU: "Геральд",
            surnameRU: "Измаилов",
            companyRU: "Авангард ООО",
            positionRU: "Руководитель отдела продаж",
            phone: nil,
            photo: "https://storage.googleapis.com/glide-prod.appspot.com/uploads-v2/ONMlxATjzlQOKMK8lp1B/pub/uUDpyPY9GeInnUkxFOr6.jpg",
            language: "Русский",
            showContacts: false,
            allowInvitations: false,
            allowNotifications: false,
            companyID: nil,
            eventID: nil
        ),
        Member(
            id: UUID(),
            email: "ya@ya.ru",
            nameRU: "Хельга",
            surnameRU: "Ватовна",
            companyRU: "Агентство экономического развития Тюрингии",
            positionRU: "директор контактного бюро Тюрингия Интернационал",
            phone: nil,
            photo: "https://storage.googleapis.com/glide-prod.appspot.com/uploads-v2/ONMlxATjzlQOKMK8lp1B/pub/xFxA2iiAHrQ3ad4fDnYA.jpg",
            language: "Русский",
            showContacts: false,
            allowInvitations: false,
            allowNotifications: false,
            companyID: nil,
            eventID: nil
        ),
        Member(
            id: UUID(),
            email: "ya@ya.ru",
            nameRU: "Агара",
            surnameRU: "Фондю",
            companyRU: "Адамс Арматурен ГмбХ",
            positionRU: "представитель РФ ",
            phone: nil,
            photo: "https://storage.googleapis.com/glide-prod.appspot.com/uploads-v2/ONMlxATjzlQOKMK8lp1B/pub/AlOY2qKDGJdp1681ClWp.jpeg",
            language: "Русский",
            showContacts: false,
            allowInvitations: false,
            allowNotifications: false,
            companyID: nil,
            eventID: nil
        ),
        Member(
            id: UUID(),
            email: "ya@ya.ru",
            nameRU: "Яннис",
            surnameRU: "Миккелен",
            companyRU: "АЙОЭССИ РАША ООО",
            positionRU: "Генералный Директор",
            phone: nil,
            photo: "https://storage.googleapis.com/glide-prod.appspot.com/uploads-v2/ONMlxATjzlQOKMK8lp1B/pub/PFxj0KOIcgkNAoAFzgZq.png",
            language: "Deutsch",
            showContacts: false,
            allowInvitations: false,
            allowNotifications: false,
            companyID: nil,
            eventID: nil
        ),
        Member(
            id: UUID(),
            email: "ya@ya.ru",
            nameRU: "Владимир",
            surnameRU: "Совков",
            companyRU: "Аксенчер ООО",
            positionRU: "Руководитель проектов по цифровой трансформации",
            phone: nil,
            photo: "https://storage.googleapis.com/glide-prod.appspot.com/uploads-v2/ONMlxATjzlQOKMK8lp1B/pub/phBbwPJ0amwsmD5nQeDG.jpg",
            language: "Русский",
            showContacts: false,
            allowInvitations: false,
            allowNotifications: false,
            companyID: nil,
            eventID: nil
        ),
        Member(
            id: UUID(),
            email: "ya@ya.ru",
            nameRU: "Александр",
            surnameRU: "Запашнов",
            companyRU: "Актуэлле Электротехник ГмбХ",
            positionRU: "Генеральный директор",
            phone: nil,
            photo: "https://storage.googleapis.com/glide-prod.appspot.com/uploads-v2/ONMlxATjzlQOKMK8lp1B/pub/4ue5euNS70n1G3oVf5ln.heic",
            language: "Русский",
            showContacts: false,
            allowInvitations: false,
            allowNotifications: false,
            companyID: nil,
            eventID: nil
        )
//        Member(
//            id: UUID(uuidString: "")!,
//            email: "",
//            nameRU: "",
//            surnameRU: "",
//            companyRU: "",
//            positionRU: "",
//            phone: "",
//            photo: "",
//            language: "",
//            showContacts: false,
//            allowInvitations: false,
//            allowNotifications: false,
//            companyID: nil,
//            eventID: nil
//        )
    ]
    
    let companies: [Company] = [
        Company(
            id: UUID(),
            type: .partner,
            legalNameRU: "А. Т. Карни Холдингс Бетайлигунгсгезельшафт мбХ",
            pRNameRU: "Kearney",
            descriptionRU: "консалтинг в области стратегии, операционной деятельности компаний,  закупок и информационных технологий",
            website: "https://www.atkearney.com",
            logo: "https://images.admiralcloud.com/v5/deliverEmbed/7f66244f-3a9b-423e-82e1-abd0f47029a9/image",
            eventID: nil
        ),
        Company(
            id: UUID(),
            type: .partner,
            legalNameRU: "А.Д.Е. Профешнл Солушнз ООО",
            pRNameRU: "A.D.E. Professional Solutions LLC",
            descriptionRU: "аудит, стратегическое консультирование в области финансов, налоговое и юридическое консультирование, управленческий консалтинг",
            website: "https://www.ade-solutions.com",
            logo: "https://images.admiralcloud.com/v5/deliverEmbed/8e654c68-6e4d-4efb-8cf6-51d924c83f06/image",
            eventID: nil
        ),
        Company(
            id: UUID(),
            type: .partner,
            legalNameRU: "ЭЙ ДЖЕЙ КОНСАЛТИНГ ООО ",
            pRNameRU: "Эй Джей Консалтинг ООО",
            descriptionRU: "Регистрация компании в России, бухгалтерский учет, налоги, отчетность, юридические услуги (право), 1С, EDI и ERP-системы",
            website: "https://www.a-j-consulting.com/",
            logo: "https://images.admiralcloud.com/v5/deliverEmbed/7a32ae72-e508-4de3-b483-1ef7a717a76d/image",
            eventID: nil
        ),
        Company(
            id: UUID(),
            type: .sponsor,
            legalNameRU: "А.С. Креацион РУС ООО",
            pRNameRU: "А.С. Креацион РУС ООО",
            descriptionRU: "Импорт и оптовая торговля обоями",
            website: "http://www.as-creation.de/",
            logo: "https://images.admiralcloud.com/v5/deliverEmbed/48f061f5-81e0-4020-9b68-2d7e5e8293a5/image",
            eventID: nil
        )
//        Company(
//            id: UUID(),
//            legalNameRU: "",
//            pRNameRU: "",
//            descriptionRU: "",
//            website: "",
//            logo: "",
//            eventID: nil
//        )
    ]
    
    private init() {}
}

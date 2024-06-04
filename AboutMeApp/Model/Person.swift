//
//  Person.swift
//  AboutMeApp
//
//  Created by Анна Белова on 03.06.2024.
//

struct User {
    let logIn: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(logIn: "User", password: "123", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let company: Company
    var fullName: String  {
        name + " " + surname
    }
    
    static func getPerson() -> Person {
        Person(name: "Anna",
               surname: "Knysheva",
               photo: "Anna",
               bio: "Анна Кнышева родилась 23 октября 1997 года в городе Бузулук. В детстве вместе c семьей часто переезжала, поэтому сменила 4 школы. В 2020 году закончила РГУ нефти и газа имени Губкина факультет геологии и геофизика нефти и газа. В данный момент работает геологом, занимается геолого-разведочными работами на шельфе. Очень любит котиков, особенно сиамских.",
               company: Company.getCompany())
    }
}

struct Company {
    let nameOfCompany: String
    let profession: String
    
    static func getCompany() -> Company {
        Company(nameOfCompany: "Gazprom nedra", profession: "Geolog")
    }
}

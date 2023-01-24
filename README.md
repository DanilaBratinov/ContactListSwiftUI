# ContactListSwiftUI
## Приложение создано в рамках изучения SwiftUI.
### Требования к приложению:
> Должен отображаться список людей с рандомными именами и фамилиями;    
> Выбирая контакт из списка, должен открываться экран с детальной информацией: Полное имя, и-мейл и телефон;  
> Создайте второй экран с использованием TabBarController и отобразите на нем весь список контактов с детальной информацией;   
> Модель данных: *```Person```*;    
> Дата-менеджер: *```DataManager()```*;  
> *```Navigation List```*;   
> *```List```*;  
> *```Tabbar```*

>> Демонстрация готового проекта:
>>![](Simulator-Screen-Recording-iPhone-14-Pro-2023-01-25-at-00.18.28.giff)

`DataManager()` делаю синглтоном и заполняю данными, используемыми в `Person`:

* [DataManager](ContactListSwiftUI/Services/DataManager.swift)  
  
Замыкание ```phoneNumber``` генерирует случайный номер телефона из заданного диапазона, добавляя в начале *+7*. 


```swift
class DataManager {
    static let shared = DataManager()
    
    let names = ["Carl", "Ted", "Steven", "John", "Tim", "Bruce", "Sharon", "Aaron", "Allan", "Nikola"]
    
    let surnames = ["Robertson", "Butler", "Pennyworth", "Smith", "Murphy", "Black", "Dow", "Williams", "Jankin", "Isaacson"]
    
    let mails = ["@mail.ru", "@icloud.com", "@gmail.com"]

    var phoneNumber: [String] {
        var number: [String] = []
        
        for _ in 0...names.count {
            number.append("+7\(Int.random(in: 100000000...999999999))")
        }
        return number
    }
    
    private init() {}
}
```

* [Person](ContactListSwiftUI/Models/Person.swift)

Свойство ```email``` берет имя и фамилю человека, далее в случайном порядке добавляет в конце ```@mail.ru```, ```@gmail.com``` или ```@icloud.com```.  
    
Структура `Person` выглядит следующим образом:  

```swift
struct Person: Identifiable {
    var id = UUID()
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
}

extension Person {
    static func getContacts() -> [Person] {
        var person: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumber.shuffled()
        let mails = DataManager.shared.mails
        
        let maxIndex = min(names.count, surnames.count)
    
        for index in 0..<maxIndex {
            person.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phoneNumber: phoneNumbers[index],
                    email: "\(names[index]).\(surnames[index])\(mails.randomElement() ?? "@mail.ru")"
                )
            )
        }
        return person
    }
}
```

Все View фалы вы сможете найти в [этой папке.](ContactListSwiftUI/Views/)

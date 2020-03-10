---
date: 2020-03-09 17:11
description: Create object from string value in swift
tags: swift
---
# Create object from string value in swift


Sometimes it's really practical to use text to create an object quickly.
For example write "red" to create an instance of Color.red, or for example "2020/03/09" to get a date object.

We will see together how to use the ExpressibleByStringLiteral protocol

## Create date from string in swift

Create extension for Date and use DateFormatter

```
extension Date: ExpressibleByStringLiteral {
     public init(stringLiteral value: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        self = formatter.date(from: value)!
    }
}
```

Now you can write directly

```
//Don't forget to type your var
let myBirthDay: Date = "1988/03/20"
```

## Create url from string in swift
Who never dreamed of being able to write a string and get a URL directly?

```
extension URL: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self = URL(string: value)!
    }
}
```

Now you can write directly

```
let url: URL = "https://www.hackingwithswift.com"
```


Many other ExpressibleBy * Litteral are available

![ExpressibleBy](https://maxime.marinel.me/img/ExpressibleBy/1_d9hZj0gJiNyIjRbx4Esv2w.png)

Now you know how to use a string or other types to transform it into a class for example
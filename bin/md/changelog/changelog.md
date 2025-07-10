# 📦 Changelog Qanchoy

Qanchoy – bu **Dart** dasturlash tilida yozilgan, _Flutter syntax_ ruhidagi **static website generator**.

---

## ✨ Features
- ⚡ Super fast build
- 🎨 Flutter uslubida widgetlar
- 📄 Markdown'dan HTML ga parsing
- 🌈 Theme va style bilan to‘liq boshqaruv

---

## 🧩 Architecture
```plaintext
/qanchoy
 ├─ /src
 │   ├─ /theme       # Colors, Fonts, Typography
 │   ├─ /styles      # TextStyle, ButtonStyles, Spacing
 │   └─ /repository  # Widget abstract va tayyor widgetlar
````

---

## 🚀 Quick start

```dart
final page = Page(
  title: 'Qanchoy',
  description: 'Modern static site generator',
  background: 'linear-gradient(to right, #ff7e5f, #feb47b)',
  body: [
    Header(...),
    Markdown(path: 'docs/about.md'),
  ],
);
```

---

## ❤️ Author

Made by Zamon & Ser Networkshoh Leonardo Gujuferro Jerjerro VII
*Muqaddas Dart, Flutter va markdown muhabbatidan tug‘ilgan.*

---

## 📜 License

MIT License



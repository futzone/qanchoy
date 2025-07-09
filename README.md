# 🏗️ Qanchoy

⚡ **Flutter syntax** ilhomida yozilgan **Dart static website generator**.
Minimalistik, ixcham va zamonaviy: landing, portfolio, docs uchun ideal.

> **Made by Zamon**
> *"Bir qatorda Flutter, Dart va web static dunyosini birlashtirdik."*

---

## ✨ Features

* `QanchoyApp` – barcha sahifalar uchun scaffold
* Flutter uslubidagi `Text`, `Container`, `Row`, `Column`, `SizedBox`, `Button`, `Image`
* `Header` va `HeaderStyle` – custom navbars
* `Theme` papkasi: Colors, Fonts, Typography
* `Style` papkasi: TextStyle, ButtonStyles, Spacing
* HTML build: `build()` metod orqali
* Toza, `Widget` tree tuzilmasi
* Super ixcham, oson o‘rganiladi

---

## 🚀 Quick Start

```dart
void main() {
  final app = QanchoyApp(
    title: 'My Site',
    meta: 'Modern static website built with Dart',
    children: [
      Header(
        title: 'Qanchoy Web App',
        actions: [
          Button(text: 'About', onClick: '/about'),
          Button(text: 'Contact', onClick: '/contact'),
        ],
        styles: HeaderStyle(backgroundColor: '#4169E1', textColor: '#FFFFFF'),
      ),
      SizedBox(height: '32px'),
      Text(
        text: 'Welcome to Qanchoy!',
        styles: TextStyle(fontSize: '32px', fontWeight: 'bold', color: '#333'),
      ),
    ],
  );

  print(app.build());
}
```

---

## 🧩 Project Structure

```
/qanchoy
 ├─ /src
 │   ├─ /theme       # Colors, Fonts, Typography
 │   ├─ /styles      # TextStyle, ButtonStyles, HeaderStyle, Spacing
 │   └─ /repository  # Widget abstract, widgets: Text, Row, Button, ...
 ├─ README.md
 └─ CHANGELOG.md
```

---

## 📦 Installation

```bash
dart pub add qanchoy
```

Yoki local:

```bash
git clone https://github.com/username/qanchoy.git
```

---

## ⚙ Planned / Roadmap

* [ ] CLI: `qanchoy build`, `qanchoy serve`
* [ ] Markdown parser
* [ ] Live preview server (debug)
* [ ] SEO helpers, meta tags
* [ ] Tailwind-like utility style

---

## ❤️ Credits

Built with Dart, inspired by Flutter & modern Jamstack.

> *“Tezlik, soddalik, estetikani birlashtirdik.”*

---

## 📜 License

MIT License


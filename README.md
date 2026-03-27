📱 Flutter BMI Calculator

A simple, user-friendly mobile application built with Flutter that calculates a user's Body Mass Index (BMI). The app provides personalized feedback based on user input and dynamically changes the UI to reflect health status.

📖 Introduction

The Flutter BMI Calculator is designed to offer a quick and interactive way for users to calculate their BMI using weight and height inputs. It enhances user experience through personalization, smooth UI transitions, and visual health indicators.
 
✨ Features
🚀 Splash Screen
A clean 5-second entry animation to welcome users.
👤 User Personalization
Users can enter their name for a personalized experience.
⚖️ BMI Calculation
Calculates BMI using:
Weight (kg)
Height (feet & inches)
🎨 Dynamic UI Feedback
🟢 Green: Healthy weight
🟠 Orange: Overweight
🔴 Red: Underweight
✅ Input Validation
Ensures all required fields are filled before calculation.
📸 Screenshots
Splash Screen	Intro Page	Calculation Page	Result
Splash	Intro	Main	Result

⚠️ Replace placeholders with actual screenshots of your app.

🛠 Tech Stack
Framework: Flutter
Language: Dart
State Management: StatefulWidget (setState)
🚀 Getting Started
Prerequisites

Make sure you have the following installed:

Flutter SDK
Android Studio or VS Code with Flutter extension
Emulator or physical device
📥 Installation

Clone the repository:

git clone https://github.com/your-username/bmi-calculator-flutter.git
cd bmi-calculator-flutter

Install dependencies:

flutter pub get

Run the app:

flutter run
▶️ Usage
Launch the app
Enter your name on the intro screen
Input your:
Weight (kg)
Height (feet & inches)
Tap Calculate BMI
View your result with color-coded feedback
📂 Project Structure
lib/
│── main.dart     # Entry point & Intro Page
│── splash.dart   # Splash screen logic
│── bmi.dart      # BMI calculation & result UI
🧮 How It Works

The app uses the standard BMI formula:

BMI = weight (kg) / (height (m))²
Steps:
Convert height from feet & inches → centimeters
Convert centimeters → meters
Apply BMI formula
Display result with corresponding UI color
📦 Dependencies

Currently uses default Flutter libraries.
(Add external packages here if you use any in the future.)

⚙️ Configuration

No special configuration required.
Ensure Flutter environment is properly set up.

🐞 Troubleshooting

Flutter not recognized?
Run:

flutter doctor

Dependencies not installing?
Try:

flutter clean
flutter pub get
App not running on emulator?
Ensure emulator is started before running the app.

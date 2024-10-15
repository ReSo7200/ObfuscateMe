# ObfuscateMe 🔒

ObfuscateMe is a **very simple APK obfuscator** that helps developers obscure their Android application code by refactoring class names, method names, and field variables. It was developed as part of my undergraduate project at the University of Bedfordshire.

The goal is to make reverse engineering more difficult by renaming sensitive parts of the APK code, making it harder for unauthorized parties to understand the logic behind the app. Although it's simple and easy to use, it also provides flexible options for obfuscation and blacklisting specific parts of the code from obfuscation.

---

## Features ✨

- **APK Decompilation** 🔍: Decompile APK files into readable smali code.
- **Obfuscation** 🔏🌀: Refactor class names, method names, and field variables for enhanced security.
- **Blacklisting⚫📋/Whitelisting⚪📋** : Select packages, classes, or methods that should not be obfuscated.
- **Recompilation & Signing** 🔄🔐: Recompile the APK and sign it after obfuscation, ready for distribution.


---

## Usage 📖

1. **Select APK File**: Choose the APK you want to obfuscate.
   
2. **Select Packages**: Use the graphical interface to select the packages that should be included in the obfuscation process. You can review the available packages in your APK and make selections easily.

3. **Choose Obfuscation Options**:  
   - You can choose to obfuscate:
     - **Classes🇨**
     - **Methods🇲**
     - **Field Variables🇫**
   - There are additional options like adding a **prefix** to obfuscated names or including a **dynamic salt** to ensure randomness.

4. **Blacklist Selection**:  
   You can choose specific classes, methods, or fields to exclude from obfuscation:
   - **Manage Blacklist/Whitelist**: The tool provides a tree view of the APK structure, allowing you to manually select or deselect parts of the code for obfuscation.
   - **Class and Method Blacklisting**: Entire classes and specific methods can be blacklisted from the obfuscation process to prevent them from being renamed.
   
5. **Refactoring**: After configuring your selections, the tool will refactor the chosen components. It will also generate a **mapping file** for future reference, showing the original and obfuscated names.

6. **Recompilation & Signing**: Once the obfuscation is complete:
   - Recompile the APK.
   - Optionally, sign the APK using either a **custom key** 🔑 or an **auto-generated key** to prepare it for distribution.

---

## Tools Used 🛠️

Special thanks to the following tools used in this project:

- **[APKTool](https://ibotpeaches.github.io/Apktool/)**: For APK decompilation and recompilation.
- **[Uber APK Signer](https://github.com/patrickfav/uber-apk-signer)**: For easy APK signing after the recompilation process.

---

## Known Issues & Future Improvements 🛠️

While ObfuscateMe is simple and functional, a few areas require improvements:

1. **Local Variable Obfuscation 🐛**: Currently, variables declared within methods are not refactored. This leaves some sections of the code vulnerable.
   
2. **Method Refactoring Conflicts 🔄**: The tool may refactor methods with the same name in different classes, even if one of those classes is blacklisted. A more precise system to avoid refactoring conflicts between different classes is needed.

3. **Performance Enhancements 🐢**: As APK sizes grow, refactoring can become slower. Optimizing the tool for larger APKs is part of the future roadmap.

---

## Contribution 🤝

Feel free to fork the project, submit pull requests, or open issues if you encounter any bugs or have suggestions. I appreciate any contributions that help make ObfuscateMe better!

---

## Contact 📧

For any queries, feel free to contact me:

- **GitHub**: [@ReSo7200](https://github.com/ReSo7200)
- **LinkedIn**: [Abdalhaleem Altamimi](https://www.linkedin.com/in/abdalhaleem-altamimi-074b5123a/)

---

## License ⚖️

This project is licensed under the MIT License.

---

## Final Thoughts 💭

ObfuscateMe is a great start for simple APK obfuscation needs, and while it still has room for improvement, it provides a solid foundation for anyone looking to protect their Android apps from reverse engineering. Thanks for checking out the project! 😊

Happy obfuscating! 🔒📱

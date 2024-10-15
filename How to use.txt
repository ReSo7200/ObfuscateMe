=========================================================
             HOW TO USE OBFUSCATEME TOOL
=========================================================

STEP 1: DECOMPILING AN APK
---------------------------------------------------------
1. **Launch the Application**: 
   - Open the ObfuscateMe tool.
   
2. **Select APK**: 
   - On the main screen, click the **"Select APK"** button to choose the APK file you want to obfuscate.

STEP 2: SELECTING PACKAGES AND COMPONENTS FOR OBFUSCATION
---------------------------------------------------------
1. **View Packages**: 
   - After selecting the APK, the tool will list all packages inside the APK.

2. **Select Packages**: 
   - Choose the packages you want to obfuscate from the left table and add them to the selected table by clicking the **" >> "** button.

3. **Choose Components to Obfuscate**: 
   - Choose whether you want to obfuscate **Classes**, **Methods**, or **Field Variables** by checking the respective boxes.

STEP 3: CUSTOMIZING OBFUSCATION
---------------------------------------------------------
1. **Add Prefix (optional)**: 
   - Enable the **"Prefix"** checkbox if you want to add a prefix to the obfuscated names.

2. **Add Salt (optional)**: 
   - Enable the **"Salt"** checkbox to add a dynamic salt for extra randomness in the obfuscation.

STEP 4: BLACKLISTING OR WHITELISTING
---------------------------------------------------------
1. **Manage Black/White Lists**: 
   - Click the **"Manage Black/White List"** button to define which classes, methods, or fields should not be obfuscated.

2. **Select Specific Components**: 
   - In the popup tree, you can blacklist or whitelist packages, classes, or methods.

STEP 5: REFACTORING
---------------------------------------------------------
1. **Start Obfuscation**: 
   - Once you have selected the components, click the **"ObfuscateMe!"** button to refactor the selected packages, classes, methods, and fields.

2. **Mapping File**: 
   - The tool will create a mapping file showing the original names and the obfuscated names.

STEP 6: RECOMPILING AND SIGNING THE APK
---------------------------------------------------------
1. **Recompile APK**: 
   - After obfuscation, click the **"Recompile"** button to rebuild the APK.

2. **Signing Options**: 
   - You can choose to sign the APK automatically or use a custom keystore by enabling the **Sign** checkbox.
   - If **Sign** is selected, you can provide a keystore or let the tool automatically sign the APK.

STEP 7: SAVING THE APK
---------------------------------------------------------
1. **Save Obfuscated APK**: 
   - After recompilation, select the destination for saving the obfuscated APK file.

2. **Verify Output**: 
   - Once the process is complete, you can review the logs in the console and optionally open the output directory where the APK is saved.

=========================================================
                      NOTES
=========================================================
1. **Ensure Java is installed** to execute APKTool.
2. **This tool does not obfuscate local variables** declared inside methods.
3. **Blacklisted methods may still be affected** if a method with the same name exists in another class.

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package obfuscateme;

import java.awt.Desktop;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.RowFilter;
import javax.swing.SwingWorker;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableRowSorter;

/**
 *
 * @author Abdalhaleem Altamimi - Student ID: 2113263
 */
public class Obfuscate extends javax.swing.JFrame {

    /**
     * Creates new form Obfuscate
     */
    public Obfuscate() {
        this.methodUsageMap = new HashMap<>();
        initComponents();
        setIconImage(Main.icon.getImage());
        this.setLocationRelativeTo(null);
        consoleScrollPane.setVisible(false);
        apkFileNameLabel.setText(Main.publicAPKFileName);
        decompileFolderNameLabel.setText(Main.decompileFolderName);

    }

    private void reapplySelections() {
        availablePackagesTable.clearSelection(); // Clear current selection
        for (String packageName : selectedPackageNames) {
            for (int i = 0; i < availablePackagesTable.getRowCount(); i++) {
                if (packageName.equals(availablePackagesTable.getValueAt(i, 0))) {
                    int viewIndex = availablePackagesTable.convertRowIndexToView(i);
                    availablePackagesTable.getSelectionModel().addSelectionInterval(viewIndex, viewIndex);
                }
            }
        }
    }

    private void writeLine(BufferedWriter writer, String line) {
        try {
            writer.write(line);
            writer.newLine();
        } catch (IOException e) {
        }
    }

    private void enableArrows() {
        int selectedRowselectedPackagesTable = selectedPackagesTable.getSelectedRow();
        int selectedRowavailablePackagesTable = availablePackagesTable.getSelectedRow();

        if (selectedRowselectedPackagesTable != -1) { // Ensure there is a selection
            removePackageButton.setEnabled(true);
        } else {
            removePackageButton.setEnabled(false);
        }

        if (selectedRowavailablePackagesTable != -1) { // Ensure there is a selection
            addPackageButton.setEnabled(true);
        } else {
            addPackageButton.setEnabled(false);
        }

    }

    private void enableConsole() {
        obfuscateButton.setVisible(false);
        obfuscateLabel.setVisible(false);
        noteLabel.setVisible(false);
        obfuscateCBPanel.setVisible(false);
        addPrefixCheckBox.setVisible(false);
        addSaltCheckBox.setVisible(false);
        blackListButton.setVisible(false);
        consoleScrollPane.setVisible(true);
    }

    private void populatePackagesTable() {
        Path decompiledDir = Paths.get(Main.decompiledApkPath);
        DefaultTableModel model = (DefaultTableModel) availablePackagesTable.getModel();
        model.setRowCount(0); // Clear existing rows

        Map<String, Set<String>> packageClasses = new HashMap<>();
        Map<String, Set<String>> packageMethods = new HashMap<>();

        try {
            Files.walkFileTree(decompiledDir, new SimpleFileVisitor<Path>() {
                @Override
                public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                    if (file.toString().endsWith(".smali")) {
                        String content = new String(Files.readAllBytes(file));
                        String packagePath = getPackagePath(decompiledDir, file);

                        // Check if the class name contains 'R' or starts with 'R$' and skip it
                        String fileName = file.getFileName().toString();
                        if (fileName.equals("R.smali") || fileName.startsWith("R$")) {
                            return FileVisitResult.CONTINUE;
                        }

                        // Check if the class name contains '$' and skip duplicates
                        if (fileName.contains("$")) {
                            return FileVisitResult.CONTINUE;
                        }

                        // Initialize or retrieve existing sets
                        Set<String> classes = packageClasses.computeIfAbsent(packagePath, k -> new HashSet<>());
                        Set<String> methods = packageMethods.computeIfAbsent(packagePath, k -> new HashSet<>());

                        // Add class name if it's not related to resources
                        classes.add(fileName.replace(".smali", "")); // Removing the .smali extension

                        // Extract method names and add to the set for the package
                        Matcher m = Pattern.compile("\\.method .+ (\\w+)\\(").matcher(content);
                        while (m.find()) {
                            String methodName = m.group(1);
                            methods.add(methodName);
                        }
                    }
                    return FileVisitResult.CONTINUE;
                }
            });

            // Write class and method names to file for testing (Debug Purposes)
            // writeClassNamesToFile(packageClasses, decompiledDir);
            // writeMethodNamesToFile(packageMethods, decompiledDir);
            // Populate the table with the aggregated data
            packageClasses.forEach((packageName, classes) -> {
                Set<String> methods = packageMethods.getOrDefault(packageName, Collections.emptySet());
                model.addRow(new Object[]{packageName, classes.size(), methods.size()});
            });

        } catch (IOException e) {
        }
    }

    // Debug purposes
//    private void writeClassNamesToFile(Map<String, Set<String>> packageClasses, Path decompiledDir) throws IOException {
//        for (Map.Entry<String, Set<String>> entry : packageClasses.entrySet()) {
//            String packageName = entry.getKey();
//            Set<String> classNames = entry.getValue();
//            Path filePath = decompiledDir.resolve(packageName + "_classes.txt");
//
//            try (BufferedWriter writer = Files.newBufferedWriter(filePath)) {
//                for (String className : classNames) {
//                    writer.write(className);
//                    writer.newLine();
//                }
//            }
//        }
//    }
//
//    // Debug purposes
//    private void writeMethodNamesToFile(Map<String, Set<String>> packageMethods, Path decompiledDir) throws IOException {
//        for (Map.Entry<String, Set<String>> entry : packageMethods.entrySet()) {
//            String packageName = entry.getKey();
//            Set<String> methodNames = entry.getValue();
//            Path filePath = decompiledDir.resolve(packageName.replace('.', '_') + "_methods.txt");
//
//            try (BufferedWriter writer = Files.newBufferedWriter(filePath)) {
//                for (String methodName : methodNames) {
//                    writer.write(methodName);
//                    writer.newLine();
//                }
//            }
//        }
//    }
    public void updatePackageNamesFromTable(JTable table) {
        int columnIndex = 0;  // column index of the package names
        selectedPackageNames.clear();  // Clear existing data in the set

        int rowCount = table.getRowCount();
        for (int i = 0; i < rowCount; i++) {
            Object value = table.getValueAt(i, columnIndex);
            if (value != null) {
                selectedPackageNames.add(value.toString());
            }
        }
    }

    private String getPackagePath(Path base, Path file) {
        String relative = base.relativize(file).toString();
        String[] parts = relative.split(Pattern.quote(File.separator));
        if (parts.length > 1) {
            // Join all parts except the first one, which is the smali directory
            return String.join(".", Arrays.copyOfRange(parts, 1, parts.length - 1)).replace('/', '.');
        }
        return "";
    }

    private void checkEnableButton() {
        int countOfrows = selectedPackagesTable.getRowCount();
        if (countOfrows < 1) {
            obfuscateButton.setEnabled(false);
            addPrefixCheckBox.setEnabled(false);
            addSaltCheckBox.setEnabled(false);

        } else if (classesCheckBox.isSelected() || methodsCheckBox.isSelected() || fieldVariablesCheckBox.isSelected()) {
            obfuscateButton.setEnabled(true);
            addPrefixCheckBox.setEnabled(true);
            addSaltCheckBox.setEnabled(true);

        } else if (!classesCheckBox.isSelected() && !methodsCheckBox.isSelected() && !fieldVariablesCheckBox.isSelected()) {
            obfuscateButton.setEnabled(false);
            addPrefixCheckBox.setEnabled(false);
            addSaltCheckBox.setEnabled(false);

        } else {
            obfuscateButton.setEnabled(true);
            addPrefixCheckBox.setEnabled(true);
            addSaltCheckBox.setEnabled(true);
        }
    }

    private void checkEnableBlackListButtons() {
        if ((classesCheckBox.isSelected() || methodsCheckBox.isSelected() || fieldVariablesCheckBox.isSelected())) {
            blackListButton.setEnabled(true);
        } else {
            blackListButton.setEnabled(false);
        }
    }

    // Methods and Classes for Obfuscating
    // Collect names from the selected package
    private void collectNames() throws IOException {
        Path decompiledDir = Paths.get(Main.decompiledApkPath);
        classRenameMap.clear();
        methodRenameMap.clear();
        fieldVariableRenameMap.clear();
        methodUsageMap.clear();

        // Suggested default file name
        String defaultFileName = Main.publicAPKFileName + "_refactoring_map.txt";

        JFileChooser fileChooser = new JFileChooser();
        fileChooser.setDialogTitle("Select where to save the refactoring map log");
        fileChooser.setSelectedFile(new File(defaultFileName));  // Set the default file name
        fileChooser.setCurrentDirectory(decompiledDir.getParent().toFile());
        FileNameExtensionFilter txtFilter = new FileNameExtensionFilter("Text Files (*.txt)", "txt");
        fileChooser.setFileFilter(txtFilter);

        int userSelection = fileChooser.showSaveDialog(null);

        if (userSelection == JFileChooser.APPROVE_OPTION) {
            File fileToSave = fileChooser.getSelectedFile();

            // Ensure the file has a .txt extension if the user didn't provide one
            if (!fileToSave.getName().endsWith(".txt")) {
                fileToSave = new File(fileToSave.getAbsolutePath() + ".txt");
            }

            try (BufferedWriter writer = Files.newBufferedWriter(fileToSave.toPath())) {
                for (String selectedPackageName : selectedPackageNames) {
                    loadingLabel.setVisible(true);

                    // Clear maps before processing each package
                    classRenameMap.clear();
                    methodRenameMap.clear();
                    fieldVariableRenameMap.clear();

                    Files.walkFileTree(decompiledDir, new SimpleFileVisitor<Path>() {
                        @Override
                        public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                            String fileName = file.getFileName().toString();
                            if (fileName.endsWith(".smali") && !fileName.contains("$") && !fileName.startsWith("R")) {
                                String content = Files.readString(file);
                                String filePackagePath = getPackagePath(decompiledDir, file);

                                if (selectedPackageName.equals(filePackagePath)) {
                                    System.out.println(loadBlacklistedItems());
                                    processFileForObfuscation(content, fileName, filePackagePath);
                                }
                                // Collect external method usages across all files
                                findMethodUsages(file, content);
                            }
                            return FileVisitResult.CONTINUE;
                        }
                    });

                    // Log the collected names for each package
                    logCollectedNamesForObfuscation(selectedPackageName, classRenameMap, methodRenameMap, fieldVariableRenameMap, writer);
                }

                enableConsole();
                consoleArea.append("Refactoring map successfully saved to: " + fileToSave.getAbsolutePath() + "\n");
                consoleArea.setCaretPosition(consoleArea.getDocument().getLength());
            } catch (IOException e) {
                enableConsole();
                consoleArea.append("Error saving the refactoring map: " + e.getMessage());
                consoleArea.setCaretPosition(consoleArea.getDocument().getLength());
            }
        } else {
            // Optionally, handle the case where the user cancels the file save operation
            enableConsole();
            consoleArea.append("User canceled the file save operation.");
            consoleArea.setCaretPosition(consoleArea.getDocument().getLength());
        }
    }

    public static String generateValidUUID() {
        String uuidString = UUID.randomUUID().toString().replace("-", "");

        // Ensure the first character of the UUID is not a digit
        if (Character.isDigit(uuidString.charAt(0))) {
            // Prepend a random lowercase letter if the first character is a digit
            char randomLowerCaseLetter = (char) ('a' + new SecureRandom().nextInt(26));
            uuidString = randomLowerCaseLetter + uuidString;
        }

        return uuidString;
    }

    public static String generateDynamicSalt() {
        String ALPHABETIC_CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"; // Only alphabetic characters for the first character
        String ALPHANUMERIC_CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"; // Alphanumeric for the rest
        int SALT_LENGTH = 8;
        SecureRandom random = new SecureRandom();
        StringBuilder salt = new StringBuilder(SALT_LENGTH);

        // Ensure the first character is always alphabetic
        int firstCharIndex = random.nextInt(ALPHABETIC_CHARACTERS.length());
        salt.append(ALPHABETIC_CHARACTERS.charAt(firstCharIndex));

        // Generate the remaining random alphanumeric string
        for (int i = 1; i < SALT_LENGTH; i++) {
            int index = random.nextInt(ALPHANUMERIC_CHARACTERS.length());
            salt.append(ALPHANUMERIC_CHARACTERS.charAt(index));
        }

        return salt.toString(); // Return the alphanumeric salt
    }

    private void processFileForObfuscation(String content, String fileName, String packageName) {
        // Extract the class name from the file
        String className = fileName.replace(".smali", "");
        String fullClassName = packageName + "." + className;

        if (classesCheckBox.isSelected()) {
//            // Check if the class itself is blacklisted
//            System.out.println("Checking Class: " + fullClassName);
//            System.out.println("Blacklist contains: " + loadBlacklistedItems().contains(fullClassName));
            if (!((loadBlacklistedItems().contains(fullClassName)) || (excludedClasses.contains(className)))){
                if (addSaltCheckBox.isSelected()) {
                    if (addPrefixCheckBox.isSelected()) {
                        classRenameMap.putIfAbsent(className, "Class" + generateDynamicSalt() + generateValidUUID());
                    } else {
                        classRenameMap.putIfAbsent(className, generateDynamicSalt() + generateValidUUID());
                    }
                } else {
                    if (addPrefixCheckBox.isSelected()) {
                        classRenameMap.putIfAbsent(className, "Class" + generateValidUUID());
                    } else {
                        classRenameMap.putIfAbsent(className, generateValidUUID());
                    }
                }
            }
        }

        if (methodsCheckBox.isSelected()) {
            Matcher methodMatcher = Pattern.compile("\\.method .+ (\\w+)\\(").matcher(content);
            while (methodMatcher.find()) {
                String methodName = methodMatcher.group(1);
                String fullMethodName = fullClassName + "." + methodName;
                System.out.println(fullMethodName);

                // Check if the method is blacklisted within this specific class and package
                if (!((loadBlacklistedItems().contains(fullMethodName)) || (excludedMethods.contains(methodName)))) {
                    if (addSaltCheckBox.isSelected()) {
                        if (addPrefixCheckBox.isSelected()) {
                            methodRenameMap.putIfAbsent(methodName, "Method" + generateDynamicSalt() + generateValidUUID());
                        } else {
                            methodRenameMap.putIfAbsent(methodName, generateDynamicSalt() + generateValidUUID());
                        }
                    } else {
                        if (addPrefixCheckBox.isSelected()) {
                            methodRenameMap.putIfAbsent(methodName, "Method" + generateValidUUID());
                        } else {
                            methodRenameMap.putIfAbsent(methodName, generateValidUUID());
                        }
                    }
                }
            }
        }

        if (fieldVariablesCheckBox.isSelected()) {
            Matcher fieldMatcher = Pattern.compile("\\.field\\s+(public|private|protected|static|final|\\s)+\\s*(\\w+)\\s*:\\s*(L[^;]+;|\\[L[^;]+;|I|Z|B|S|J|F|D|C)").matcher(content);
            while (fieldMatcher.find()) {
                String fieldName = fieldMatcher.group(2);
                String fullFieldName = fullClassName + "." + fieldName;

                // Check if the field is blacklisted within this specific class and package
                if (!loadBlacklistedItems().contains(fullFieldName)) {
                    if (addSaltCheckBox.isSelected()) {
                        if (addPrefixCheckBox.isSelected()) {
                            fieldVariableRenameMap.putIfAbsent(fieldName, "Field" + generateDynamicSalt() + generateValidUUID());
                        } else {
                            fieldVariableRenameMap.putIfAbsent(fieldName, generateDynamicSalt() + generateValidUUID());
                        }
                    } else {
                        if (addPrefixCheckBox.isSelected()) {
                            fieldVariableRenameMap.putIfAbsent(fieldName, "Field" + generateValidUUID());
                        } else {
                            fieldVariableRenameMap.putIfAbsent(fieldName, generateValidUUID());
                        }
                    }
                }
            }
        }
    }

    private void findMethodUsages(Path file, String content) {
        // Pattern to find method invocations, including static, virtual, direct, super, and interface methods
        Matcher methodMatcher = Pattern.compile(
                "invoke-(static|virtual|direct|super|interface)\\s+\\{[^}]*},\\s+L([^;]+);->(\\w+)\\(.*?\\)" // Match different invoke types
        ).matcher(content);

        while (methodMatcher.find()) {
            String className = methodMatcher.group(2).replace('/', '.');  // Format class name
            String methodName = methodMatcher.group(3);  // Capture method name
            String key = className + "." + methodName;

            // Store method usage in map, associating the class and method with the file path
            methodUsageMap.computeIfAbsent(key, k -> new HashSet<>()).add(file.toString());
        }

        // Additionally, capture reflection-based method invocations (e.g., Class.getMethod("methodName"))
        Matcher reflectionMatcher = Pattern.compile(
                "const-string\\s+\\w+,\\s+\"(\\w+)\"\\s+invoke-virtual\\s+\\{[^}]*},\\s+Ljava/lang/Class;->getMethod"
        ).matcher(content);

        while (reflectionMatcher.find()) {
            String methodName = reflectionMatcher.group(1);  // Capture method name in reflection call
            String key = "reflection." + methodName;  // Use a special key for reflection calls

            // Store method usage for reflection-based method invocations
            methodUsageMap.computeIfAbsent(key, k -> new HashSet<>()).add(file.toString());
        }
    }

    private void logCollectedNamesForObfuscation(String packageName, Map<String, String> classMap, Map<String, String> methodMap, Map<String, String> fieldVariableMap, BufferedWriter writer) throws IOException {
        writer.write("Package: " + packageName + "\n\n");

        writer.write("Classes to be obfuscated:\n");
        for (String originalClass : classMap.keySet()) {
            writer.write(originalClass + " -> " + classMap.get(originalClass) + "\n");
        }

        writer.write("\nMethods to be obfuscated:\n");
        for (String originalMethod : methodMap.keySet()) {
            writer.write(originalMethod + " -> " + methodMap.get(originalMethod) + "\n");
        }

        writer.write("\nField Variables to be obfuscated:\n");
        for (Map.Entry<String, String> entry : fieldVariableMap.entrySet()) {
            writer.write(entry.getKey() + " -> " + entry.getValue() + "\n");
        }

        writer.write("\n------------------------------------------------------\n");
    }

    public void collectMethodUsages(Path basePath) throws IOException {
        Files.walkFileTree(basePath, new SimpleFileVisitor<Path>() {
            @Override
            public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                if (file.toString().endsWith(".smali")) {
                    String content = new String(Files.readAllBytes(file));
                    findMethodUsages(file, content);
                }
                return FileVisitResult.CONTINUE;
            }
        });
    }

    // Define a set of method names to exclude from obfuscation
    Set<String> excludedMethods = new HashSet<>(Arrays.asList(
            "<init>", "<clinit>", "onCreate", "onClick", "toString", "equals", "hashCode", "clone", "finalize",
            "onStart", "onResume", "onPause", "onStop", "onDestroy", "onActivityResult"
    // Add any other methods you wish to exclude
    ));

    Set<String> excludedClasses = new HashSet<>(Arrays.asList(
            "BuildConfig",
            "MainActivity",
            // Android lifecycle components
            "Application",
            "Activity",
            "Service",
            "BroadcastReceiver",
            "ContentProvider",
            // Commonly used entry points and components in AndroidManifest.xml
            "SplashActivity", // If you have a splash screen.
            // Fragment class names if using Fragments directly declared in XML layouts or mentioned in the code
            "MyFragment", // Example fragment, replace with actual fragment class names used in your app
            // Adapter classes if they are referenced in XML layouts
            "MyAdapter", // Example adapter, replace with actual adapter class names used in your app
            // ViewModel classes if using Android Architecture Components
            "MyViewModel", // Example ViewModel, replace with actual ViewModel class names used in your app
            // Any other class names that are referenced dynamically (e.g., via reflection) or in AndroidManifest.xml
            "MyCustomView", // Example custom view, replace with actual custom view class names used in your app
            "MyApplication" // If you have a custom Application class
    // Add any other classes specific to your application that should not be obfuscated
    ));

    private Set<String> loadBlacklistedItems() {
        return Obfuscate.blacklistedItems;  // Return the blacklisted items from Obfuscate
    }

    // Refactor names based on the collected names
    private void refactorNames() {
        SwingWorker<Void, String> worker = new SwingWorker<Void, String>() {
            @Override
            protected Void doInBackground() throws Exception {

//                obfuscateButton.setEnabled(false);
//                classesCheckBox.setEnabled(false);
//                methodsCheckBox.setEnabled(false);
//                fieldVariablesCheckBox.setEnabled(false);
//                blackListClassesCheckBox.setEnabled(false);
//                blackListMethodsCheckBox.setEnabled(false);
//                blackListFieldVariables.setEnabled(false);
                enableConsole();
                backButton.setEnabled(false);
                Path decompiledDir = Paths.get(Main.decompiledApkPath);

                // Refactor within targeted packages
                Files.walk(decompiledDir, 1)
                        .filter(Files::isDirectory)
                        .filter(path -> path.getFileName().toString().startsWith("smali"))
                        .forEach(smaliDir -> {
                            selectedPackageNames.forEach(selectedPackageName -> {
                                Path targetDir = smaliDir.resolve(selectedPackageName.replace(".", File.separator));
                                if (Files.exists(targetDir)) {
                                    try {
                                        Files.walkFileTree(targetDir, new SimpleFileVisitor<Path>() {
                                            @Override
                                            public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                                                String content = Files.readString(file);
                                                // Refactor class names
                                                for (Map.Entry<String, String> entry : classRenameMap.entrySet()) {
                                                    if (content.contains(entry.getKey())) {
                                                        content = content.replaceAll("\\b" + Pattern.quote(entry.getKey()) + "\\b", entry.getValue());
                                                        refactoredClassNames.add(entry.getKey()); // Add class name to the Set
                                                        publish("Refactoring class " + entry.getKey() + " to " + entry.getValue());
                                                    }
                                                }

                                                // Refactor method names
                                                for (Map.Entry<String, String> entry : methodRenameMap.entrySet()) {
                                                    if (content.contains(entry.getKey())) {
                                                        content = refactorMethodUsage(content, entry.getKey(), entry.getValue());
                                                        refactoredMethodNames.add(entry.getKey()); // Add method name to the Set
                                                        publish("Refactoring method " + entry.getKey() + " to " + entry.getValue());
                                                    }
                                                }

                                                // Refactor field variables
                                                for (Map.Entry<String, String> entry : fieldVariableRenameMap.entrySet()) {
                                                    if (content.contains(entry.getKey())) {
                                                        content = refactorFieldAccess(content, entry.getKey(), entry.getValue());
                                                        refactoredFieldVariableNames.add(entry.getKey()); // Add field name to the Set
                                                        publish("Refactoring field " + entry.getKey() + " to " + entry.getValue());
                                                    }
                                                }

                                                Files.writeString(file, content);
                                                return FileVisitResult.CONTINUE;
                                            }
                                        });
                                    } catch (IOException e) {
                                    }
                                }
                            });
                        });

                // Then, refactor globally across all smali files
                Files.walk(decompiledDir, Integer.MAX_VALUE)
                        .filter(Files::isRegularFile)
                        .filter(path -> path.toString().endsWith(".smali"))
                        .forEach(file -> {
                            try {
                                String content = new String(Files.readAllBytes(file));
                                boolean changed = false;

                                // Refactor class names globally
                                for (Map.Entry<String, String> entry : classRenameMap.entrySet()) {
                                    if (content.contains(entry.getKey())) {
                                        content = content.replaceAll("\\b" + Pattern.quote(entry.getKey()) + "\\b", entry.getValue());
                                        publish("Refactoring class " + entry.getKey() + " to " + entry.getValue());
                                        changed = true;
                                    }
                                }

                                // Refactor method and field names using their global usage maps
                                for (Map.Entry<String, String> entry : methodRenameMap.entrySet()) {
                                    if (content.contains(entry.getKey())) {
                                        content = refactorMethodUsage(content, entry.getKey(), entry.getValue());
                                        publish("Refactoring method " + entry.getKey() + " to " + entry.getValue());
                                        changed = true;
                                    }
                                }

                                for (Map.Entry<String, String> entry : fieldVariableRenameMap.entrySet()) {
                                    if (content.contains(entry.getKey())) {
                                        content = refactorFieldAccess(content, entry.getKey(), entry.getValue());
                                        publish("Refactoring field " + entry.getKey() + " to " + entry.getValue());
                                        changed = true;
                                    }
                                }

                                if (changed) {
                                    Files.writeString(file, content);  // Write changes back to the file
                                }
                            } catch (IOException e) {
                            }
                        });

                return null;
            }

            @Override
            protected void process(List<String> chunks) {
                // This method is called on the EDT
                consoleArea.append(chunks.get(chunks.size() - 1) + "\n");
                consoleArea.setCaretPosition(consoleArea.getDocument().getLength());
            }

            @Override
            protected void done() {
                numberOfRefactoedClasses.set(refactoredClassNames.size()); // Reflects unique class count
                numberOfRefactoredMethods.set(refactoredMethodNames.size()); // Reflects unique method count
                numberOfRefactoredLFields.set(refactoredFieldVariableNames.size()); // Reflects unique Local fields count
                loadingLabel.setVisible(false);
                enableConsole();
                consoleArea.append("Refactoring complete.");
                consoleArea.setCaretPosition(consoleArea.getDocument().getLength());

                // Ask the user if they want to proceed with recompilation
                int result = JOptionPane.showConfirmDialog(null,
                        "Refactoring is complete. Would you like to proceed with the recompilation process?",
                        "Recompilation",
                        JOptionPane.YES_NO_OPTION);

                // If the user chooses "Yes", start the recompilation
                if (result == JOptionPane.YES_OPTION) {
                    dispose();
                    new Recompile().setVisible(true);
                } else {
                    // If the user chooses "No", ask if they want to open the decompilation folder
                    backButton.setEnabled(true);
                    availablePackagesTable.setEnabled(false);
                    selectedPackagesTable.setEnabled(false);
                    addPackageButton.setEnabled(false);
                    removePackageButton.setEnabled(false);

                    int openFolderResponse = JOptionPane.showConfirmDialog(null,
                            "Would you like to open the decompilation folder?",
                            "Open Folder",
                            JOptionPane.YES_NO_OPTION);

                    if (openFolderResponse == JOptionPane.YES_OPTION) {
                        // If yes, open the directory
                        File directory = Main.outputDirFile; // Assuming fileToSave is the file created by the process
                        try {
                            Desktop.getDesktop().open(directory);
                        } catch (IOException e) {
                            JOptionPane.showMessageDialog(null, "An error occurred while trying to open the folder.");
                        }
                    }

                }

            }
        };

        worker.execute(); // Execute the SwingWorker to perform the refactoring in a background thread
    }

    private String refactorMethodUsage(String content, String methodName, String newMethodName) {
        // Refactor method definitions and usages within all contexts
        // Handling method definitions
        content = content.replaceAll("(\\.method\\s+(?:public|private|protected|static|final|\\s)+[^\\n]*?)\\b" + Pattern.quote(methodName) + "(\\([^\\)]*\\))", "$1" + newMethodName + "$2");

        // Handling method invocations
        // This pattern ensures that method calls are captured precisely
        content = content.replaceAll("([^\\w])" + Pattern.quote(methodName) + "(\\()", "$1" + newMethodName + "$2");

        return content;
    }

    private String refactorFieldAccess(String content, String originalFieldName, String newFieldName) {
        // Pattern to match field declarations and usages in Smali (looking for both declarations and "->" accesses)
        String fieldDeclarationPattern = "\\b" + Pattern.quote(originalFieldName) + "\\b(?=\\s*:)"; // matches field declarations
        String fieldUsagePattern = "\\b" + Pattern.quote(originalFieldName) + "\\b(?=\\s*->)"; // matches field usages

        // Replace field declarations
        content = content.replaceAll(fieldDeclarationPattern, newFieldName);
        // Replace field usages
        content = content.replaceAll(fieldUsagePattern, newFieldName);

        return content;
    }
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        obfuscatePanel = new javax.swing.JPanel();
        title = new javax.swing.JLabel();
        obfuscateButton = new javax.swing.JButton();
        selectedAPKFileLabel = new javax.swing.JLabel();
        apkFileNameLabel = new javax.swing.JLabel();
        selectedPackageNameLabel = new javax.swing.JLabel();
        packageNameLabel = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        availablePackagesTable = new javax.swing.JTable();
        searchForPackageField = new javax.swing.JTextField();
        loadingLabel = new javax.swing.JLabel();
        decompileFolderLabel = new javax.swing.JLabel();
        decompileFolderNameLabel = new javax.swing.JLabel();
        searchLabel = new javax.swing.JLabel();
        noteLabel = new javax.swing.JLabel();
        obfuscateLabel = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        selectedPackagesTable = new javax.swing.JTable();
        addPackageButton = new javax.swing.JButton();
        removePackageButton = new javax.swing.JButton();
        searchLabelTwo = new javax.swing.JLabel();
        searchForPackageFieldTwo = new javax.swing.JTextField();
        gitHubProfileButton = new javax.swing.JButton();
        obfuscateCBPanel = new javax.swing.JPanel();
        methodsCheckBox = new javax.swing.JCheckBox();
        classesCheckBox = new javax.swing.JCheckBox();
        fieldVariablesCheckBox = new javax.swing.JCheckBox();
        localVariablesCheckBox = new javax.swing.JCheckBox();
        linkedInButton = new javax.swing.JButton();
        backButton = new javax.swing.JButton();
        blackListButton = new javax.swing.JButton();
        hint1Label = new javax.swing.JLabel();
        infoLabel = new javax.swing.JLabel();
        info2Label = new javax.swing.JLabel();
        selectedPackagesLabel = new javax.swing.JLabel();
        availablePackagesLabel = new javax.swing.JLabel();
        addSaltCheckBox = new javax.swing.JCheckBox();
        addPrefixCheckBox = new javax.swing.JCheckBox();
        consoleScrollPane = new javax.swing.JScrollPane();
        consoleArea = new javax.swing.JTextArea();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        obfuscatePanel.setLayout(null);

        title.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        title.setText("ObfuscateMe");
        obfuscatePanel.add(title);
        title.setBounds(570, 10, 114, 25);

        obfuscateButton.setText("ObfuscateMe!");
        obfuscateButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        obfuscateButton.setEnabled(false);
        obfuscateButton.setFocusable(false);
        obfuscateButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                obfuscateButtonActionPerformed(evt);
            }
        });
        obfuscatePanel.add(obfuscateButton);
        obfuscateButton.setBounds(580, 570, 148, 46);

        selectedAPKFileLabel.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        selectedAPKFileLabel.setText("Selected APK file:");
        obfuscatePanel.add(selectedAPKFileLabel);
        selectedAPKFileLabel.setBounds(480, 80, 150, 25);

        apkFileNameLabel.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        apkFileNameLabel.setForeground(new java.awt.Color(255, 0, 0));
        apkFileNameLabel.setText("APK file name");
        obfuscatePanel.add(apkFileNameLabel);
        apkFileNameLabel.setBounds(650, 80, 300, 25);

        selectedPackageNameLabel.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        selectedPackageNameLabel.setText("Selected Package(s):");
        obfuscatePanel.add(selectedPackageNameLabel);
        selectedPackageNameLabel.setBounds(420, 350, 180, 25);

        packageNameLabel.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        packageNameLabel.setForeground(new java.awt.Color(255, 0, 0));
        packageNameLabel.setText("Selected package(s) number");
        obfuscatePanel.add(packageNameLabel);
        packageNameLabel.setBounds(620, 350, 430, 25);

        jScrollPane1.setHorizontalScrollBarPolicy(javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
        jScrollPane1.setVerticalScrollBarPolicy(javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
        jScrollPane1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jScrollPane1.setRowHeaderView(null);
        jScrollPane1.setViewportView(null);

        availablePackagesTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Package Name", "Number of Classess", "Number of Methods"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.Integer.class, java.lang.Integer.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        availablePackagesTable.setAutoResizeMode(javax.swing.JTable.AUTO_RESIZE_OFF);
        availablePackagesTable.setAutoscrolls(false);
        availablePackagesTable.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        availablePackagesTable.setFillsViewportHeight(true);
        availablePackagesTable.setSelectionMode(javax.swing.ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
        availablePackagesTable.setSelectionMode(javax.swing.ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
        availablePackagesTable.setShowGrid(true);
        availablePackagesTable.getTableHeader().setReorderingAllowed(false);
        availablePackagesTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                availablePackagesTableMousePressed(evt);
            }
        });
        jScrollPane1.setViewportView(availablePackagesTable);
        if (availablePackagesTable.getColumnModel().getColumnCount() > 0) {
            availablePackagesTable.getColumnModel().getColumn(0).setPreferredWidth(276);
            availablePackagesTable.getColumnModel().getColumn(1).setPreferredWidth(148);
            availablePackagesTable.getColumnModel().getColumn(2).setPreferredWidth(148);
        }

        obfuscatePanel.add(jScrollPane1);
        jScrollPane1.setBounds(10, 190, 590, 150);

        searchForPackageField.setCursor(new java.awt.Cursor(java.awt.Cursor.TEXT_CURSOR));
        obfuscatePanel.add(searchForPackageField);
        searchForPackageField.setBounds(250, 140, 190, 40);
        DefaultTableModel model = (DefaultTableModel) availablePackagesTable.getModel();
        TableRowSorter<DefaultTableModel> sorter = new TableRowSorter<>(model);
        availablePackagesTable.setRowSorter(sorter);
        populatePackagesTable();
        searchForPackageField.getDocument().addDocumentListener(new DocumentListener() {
            @Override
            public void insertUpdate(DocumentEvent e) {
                search(searchForPackageField.getText());
            }

            @Override
            public void removeUpdate(DocumentEvent e) {
                search(searchForPackageField.getText());
            }

            @Override
            public void changedUpdate(DocumentEvent e) {
                search(searchForPackageField.getText());
            }

            private void search(String str) {
                if (str.length() == 0) {
                    sorter.setRowFilter(null);
                } else {
                    // Assumes "Name" is the second column, index starts at 0
                    sorter.setRowFilter(RowFilter.regexFilter("(?i)" + str, 0));
                }
                reapplySelections();
            }
        });

        loadingLabel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/obfuscateme/img/loading.gif"))); // NOI18N
        obfuscatePanel.add(loadingLabel);
        loadingLabel.setBounds(620, 580, 48, 48);
        loadingLabel.setVisible(false);

        decompileFolderLabel.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        decompileFolderLabel.setText("Decompile folder name:");
        obfuscatePanel.add(decompileFolderLabel);
        decompileFolderLabel.setBounds(430, 110, 210, 25);

        decompileFolderNameLabel.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        decompileFolderNameLabel.setForeground(new java.awt.Color(255, 0, 0));
        decompileFolderNameLabel.setText("Decompiled folder name");
        obfuscatePanel.add(decompileFolderNameLabel);
        decompileFolderNameLabel.setBounds(650, 110, 310, 25);

        searchLabel.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        searchLabel.setText("Search:");
        obfuscatePanel.add(searchLabel);
        searchLabel.setBounds(170, 140, 70, 40);

        noteLabel.setForeground(new java.awt.Color(255, 0, 0));
        noteLabel.setText("* Please follow the documentation");
        obfuscatePanel.add(noteLabel);
        noteLabel.setBounds(570, 550, 200, 20);

        obfuscateLabel.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        obfuscateLabel.setText("Obfuscate:");
        obfuscatePanel.add(obfuscateLabel);
        obfuscateLabel.setBounds(360, 400, 100, 50);

        jScrollPane2.setHorizontalScrollBarPolicy(javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
        jScrollPane2.setVerticalScrollBarPolicy(javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
        jScrollPane2.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        selectedPackagesTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Package Name", "Number of Classess", "Number of Methods"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.Integer.class, java.lang.Integer.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        selectedPackagesTable.setAutoResizeMode(javax.swing.JTable.AUTO_RESIZE_OFF);
        selectedPackagesTable.setAutoscrolls(false);
        selectedPackagesTable.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        selectedPackagesTable.setSelectionMode(javax.swing.ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
        selectedPackagesTable.setSelectionMode(javax.swing.ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
        selectedPackagesTable.setShowGrid(true);
        selectedPackagesTable.getTableHeader().setResizingAllowed(false);
        selectedPackagesTable.getTableHeader().setReorderingAllowed(false);
        selectedPackagesTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                selectedPackagesTableMousePressed(evt);
            }
        });
        jScrollPane2.setViewportView(selectedPackagesTable);
        if (selectedPackagesTable.getColumnModel().getColumnCount() > 0) {
            selectedPackagesTable.getColumnModel().getColumn(0).setPreferredWidth(276);
            selectedPackagesTable.getColumnModel().getColumn(1).setPreferredWidth(148);
            selectedPackagesTable.getColumnModel().getColumn(2).setPreferredWidth(148);
        }

        obfuscatePanel.add(jScrollPane2);
        jScrollPane2.setBounds(680, 190, 590, 150);

        addPackageButton.setText(">>");
        addPackageButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        addPackageButton.setEnabled(false);
        addPackageButton.setFocusable(false);
        addPackageButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addPackageButtonActionPerformed(evt);
            }
        });
        obfuscatePanel.add(addPackageButton);
        addPackageButton.setBounds(610, 220, 60, 50);

        removePackageButton.setText("<<");
        removePackageButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        removePackageButton.setEnabled(false);
        removePackageButton.setFocusable(false);
        removePackageButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                removePackageButtonActionPerformed(evt);
            }
        });
        obfuscatePanel.add(removePackageButton);
        removePackageButton.setBounds(610, 280, 60, 50);

        searchLabelTwo.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        searchLabelTwo.setText("Search:");
        obfuscatePanel.add(searchLabelTwo);
        searchLabelTwo.setBounds(840, 140, 70, 40);

        searchForPackageFieldTwo.setCursor(new java.awt.Cursor(java.awt.Cursor.TEXT_CURSOR));
        obfuscatePanel.add(searchForPackageFieldTwo);
        searchForPackageFieldTwo.setBounds(920, 140, 190, 40);
        DefaultTableModel modelx = (DefaultTableModel) selectedPackagesTable.getModel();
        TableRowSorter<DefaultTableModel> sorterx = new TableRowSorter<>(modelx);
        selectedPackagesTable.setRowSorter(sorterx);
        searchForPackageFieldTwo.getDocument().addDocumentListener(new DocumentListener() {
            @Override
            public void insertUpdate(DocumentEvent e) {
                newFilter();
            }

            @Override
            public void removeUpdate(DocumentEvent e) {
                newFilter();
            }

            @Override
            public void changedUpdate(DocumentEvent e) {
                newFilter();
            }

            private void newFilter() {
                RowFilter<DefaultTableModel, Object> rf = null;
                // If current expression doesn't parse, don't update.
                try {
                    // Apply regexFilter to filter out the rows based on input at the "Package" column (index 0)
                    rf = RowFilter.regexFilter("(?i)" + searchForPackageFieldTwo.getText(), 0);  // Added case insensitivity with "(?i)"
                } catch (java.util.regex.PatternSyntaxException e) {
                    return;  // If the pattern is not valid, it simply returns without setting the filter
                }
                sorterx.setRowFilter(rf);
            }
        });

        gitHubProfileButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/obfuscateme/img/github-48.png"))); // NOI18N
        gitHubProfileButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        gitHubProfileButton.setFocusable(false);
        gitHubProfileButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                gitHubProfileButtonActionPerformed(evt);
            }
        });
        obfuscatePanel.add(gitHubProfileButton);
        gitHubProfileButton.setBounds(20, 620, 50, 50);

        obfuscateCBPanel.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 3));

        methodsCheckBox.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        methodsCheckBox.setText("Methods");
        methodsCheckBox.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        methodsCheckBox.setFocusable(false);
        methodsCheckBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                methodsCheckBoxActionPerformed(evt);
            }
        });

        classesCheckBox.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        classesCheckBox.setText("Classes");
        classesCheckBox.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        classesCheckBox.setFocusable(false);
        classesCheckBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                classesCheckBoxActionPerformed(evt);
            }
        });

        fieldVariablesCheckBox.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        fieldVariablesCheckBox.setText("Field Variables");
        fieldVariablesCheckBox.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        fieldVariablesCheckBox.setFocusable(false);
        fieldVariablesCheckBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                fieldVariablesCheckBoxActionPerformed(evt);
            }
        });

        localVariablesCheckBox.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        localVariablesCheckBox.setText("Local Variables");
        localVariablesCheckBox.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        localVariablesCheckBox.setEnabled(false);

        javax.swing.GroupLayout obfuscateCBPanelLayout = new javax.swing.GroupLayout(obfuscateCBPanel);
        obfuscateCBPanel.setLayout(obfuscateCBPanelLayout);
        obfuscateCBPanelLayout.setHorizontalGroup(
            obfuscateCBPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, obfuscateCBPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(classesCheckBox)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(methodsCheckBox)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(fieldVariablesCheckBox, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(localVariablesCheckBox, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        obfuscateCBPanelLayout.setVerticalGroup(
            obfuscateCBPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(obfuscateCBPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(obfuscateCBPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(classesCheckBox)
                    .addGroup(obfuscateCBPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(localVariablesCheckBox)
                        .addComponent(fieldVariablesCheckBox)
                        .addComponent(methodsCheckBox)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        obfuscatePanel.add(obfuscateCBPanel);
        obfuscateCBPanel.setBounds(470, 400, 410, 50);

        linkedInButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/obfuscateme/img/linkedin.png"))); // NOI18N
        linkedInButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        linkedInButton.setFocusable(false);
        linkedInButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                linkedInButtonActionPerformed(evt);
            }
        });
        obfuscatePanel.add(linkedInButton);
        linkedInButton.setBounds(80, 620, 50, 50);

        backButton.setText("Back to main page");
        backButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        backButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backButtonActionPerformed(evt);
            }
        });
        obfuscatePanel.add(backButton);
        backButton.setBounds(1110, 610, 150, 60);

        blackListButton.setText("Manage White/Black list");
        blackListButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                blackListButtonActionPerformed(evt);
            }
        });
        obfuscatePanel.add(blackListButton);
        blackListButton.setBounds(560, 460, 180, 40);

        hint1Label.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        hint1Label.setText("Select the packages to be obfusacted");
        obfuscatePanel.add(hint1Label);
        hint1Label.setBounds(510, 40, 260, 40);

        infoLabel.setFont(new java.awt.Font("Segoe UI", 2, 14)); // NOI18N
        infoLabel.setText("Developed by Abdalhaleem Altamimi - @ReSo7200");
        obfuscatePanel.add(infoLabel);
        infoLabel.setBounds(230, 650, 340, 20);

        info2Label.setFont(new java.awt.Font("Segoe UI", 2, 12)); // NOI18N
        info2Label.setText("University of Bedfordshire Undergradute Project - Student ID: 2113263");
        obfuscatePanel.add(info2Label);
        info2Label.setBounds(680, 650, 380, 16);

        selectedPackagesLabel.setFont(new java.awt.Font("Segoe UI", 3, 14)); // NOI18N
        selectedPackagesLabel.setText("Selected Packages:");
        obfuscatePanel.add(selectedPackagesLabel);
        selectedPackagesLabel.setBounds(680, 170, 120, 20);

        availablePackagesLabel.setFont(new java.awt.Font("Segoe UI", 3, 14)); // NOI18N
        availablePackagesLabel.setText("Avaialable Packages:");
        obfuscatePanel.add(availablePackagesLabel);
        availablePackagesLabel.setBounds(10, 170, 150, 20);

        addSaltCheckBox.setText("Random Salt?");
        addSaltCheckBox.setEnabled(false);
        addSaltCheckBox.setFocusable(false);
        obfuscatePanel.add(addSaltCheckBox);
        addSaltCheckBox.setBounds(680, 520, 110, 20);

        addPrefixCheckBox.setText("Prefix?");
        addPrefixCheckBox.setEnabled(false);
        addPrefixCheckBox.setFocusable(false);
        obfuscatePanel.add(addPrefixCheckBox);
        addPrefixCheckBox.setBounds(550, 520, 110, 20);

        consoleArea.setEditable(false);
        consoleArea.setBackground(new java.awt.Color(0, 0, 0));
        consoleArea.setColumns(20);
        consoleArea.setFont(new java.awt.Font("Segoe UI", 0, 11)); // NOI18N
        consoleArea.setForeground(new java.awt.Color(255, 255, 255));
        consoleArea.setRows(5);
        consoleScrollPane.setViewportView(consoleArea);

        obfuscatePanel.add(consoleScrollPane);
        consoleScrollPane.setBounds(390, 390, 520, 160);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(obfuscatePanel, javax.swing.GroupLayout.PREFERRED_SIZE, 1280, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(obfuscatePanel, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 685, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void obfuscateButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_obfuscateButtonActionPerformed
        // TODO add your handling code here:
        try {
            // Get the selected packages from the table
            updatePackageNamesFromTable(selectedPackagesTable);

            // Collect class and method names wihtin the specified package
            collectNames();

            // Apply refactoring wihtin the tageted package
            refactorNames();
        } catch (IOException e) {

        }
    }//GEN-LAST:event_obfuscateButtonActionPerformed

    private void availablePackagesTableMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_availablePackagesTableMousePressed
        // TODO add your handling code here:
        int selectedRowView = availablePackagesTable.getSelectedRow();

        enableArrows();

        if (selectedRowView != -1) { // Ensure there is a selection
            // Convert the index of the view's row to the model's row index
            int selectedRowModel = availablePackagesTable.convertRowIndexToModel(selectedRowView);

            // Now use the model's row index to get the selected package name
            String selectedPackageName = (String) availablePackagesTable.getModel().getValueAt(selectedRowModel, 0);

            // Convert the package name to a directory path
            String packageDirectory = selectedPackageName.replace('.', File.separatorChar);

            // Lists to collect class and method names
            List<String> classNames = new ArrayList<>();
            Map<String, Set<String>> methodsMap = new HashMap<>();

            // Define the pattern to match class and method definitions
            Pattern classPattern = Pattern.compile("\\.class .+ L" + selectedPackageName.replace('.', '/') + "/([\\w$]+);");
            Pattern methodPattern = Pattern.compile("\\.method .+ (\\w+)\\(");

            // Find all smali folders and process them
            try (Stream<Path> smaliFoldersStream = Files.list(Paths.get(Main.decompiledApkPath)).filter(Files::isDirectory)) {
                smaliFoldersStream.forEach(smaliFolder -> {
                    Path smaliFolderPath = smaliFolder.resolve(packageDirectory);
                    if (Files.isDirectory(smaliFolderPath)) {
                        try (Stream<Path> filesStream = Files.walk(smaliFolderPath)) {
                            filesStream.filter(Files::isRegularFile).forEach(file -> {
                                try {
                                    List<String> lines = Files.readAllLines(file);
                                    for (String line : lines) {
                                        Matcher classMatcher = classPattern.matcher(line);
                                        if (classMatcher.find()) {
                                            String className = classMatcher.group(1);
                                            classNames.add(className);
                                        }
                                        Matcher methodMatcher = methodPattern.matcher(line);
                                        while (methodMatcher.find()) {
                                            String methodName = methodMatcher.group(1);
                                            methodsMap.computeIfAbsent(selectedPackageName, k -> new HashSet<>()).add(methodName);
                                        }
                                    }
                                } catch (IOException e) {
                                }
                            });
                        } catch (IOException e) {
                        }
                    }
                });
            } catch (IOException e) {
            }

            // Now, write the class and method names to a text file
            Path outputPath = Paths.get(Main.decompiledApkPath, selectedPackageName + "_methods_classes.txt");
            try (BufferedWriter writer = Files.newBufferedWriter(outputPath)) {
                writer.write("Classes:\n");
                classNames.forEach(className -> writeLine(writer, className));
                writer.write("\nMethods:\n");
                methodsMap.getOrDefault(selectedPackageName, Collections.emptySet())
                        .forEach(methodName -> writeLine(writer, methodName));
            } catch (IOException e) {
                JOptionPane.showMessageDialog(this, "Error writing to file: " + outputPath, "Error", JOptionPane.ERROR_MESSAGE);
            }
        }
    }//GEN-LAST:event_availablePackagesTableMousePressed

    private void selectedPackagesTableMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_selectedPackagesTableMousePressed
        // TODO add your handling code here:
        enableArrows();
    }//GEN-LAST:event_selectedPackagesTableMousePressed

    private void addPackageButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addPackageButtonActionPerformed
        // TODO add your handling code here:
        // Get the model for both tables
        DefaultTableModel availableModel = (DefaultTableModel) availablePackagesTable.getModel();
        DefaultTableModel selectedModel = (DefaultTableModel) selectedPackagesTable.getModel();

        // Get the selected rows from the available packages table
        int[] selectedRows = availablePackagesTable.getSelectedRows();

        // Iterate over the selected rows from last to first
        for (int i = selectedRows.length - 1; i >= 0; i--) {
            int modelRow = availablePackagesTable.convertRowIndexToModel(selectedRows[i]);

            // Retrieve data from all columns
            Object colData1 = availableModel.getValueAt(modelRow, 0); // Data from column 1
            Object colData2 = availableModel.getValueAt(modelRow, 1); // Data from column 2
            Object colData3 = availableModel.getValueAt(modelRow, 2); // Data from column 3

            // Add a new row to the selected packages table with data from all 3 columns
            selectedModel.addRow(new Object[]{colData1, colData2, colData3});

            // Remove the row from available packages table
            availableModel.removeRow(modelRow);
        }
        String numberOfSelectedPackages = String.valueOf(selectedPackagesTable.getRowCount());

        packageNameLabel.setText(numberOfSelectedPackages);

        //packageNameLabel.setText(selectedPackageName);
        publicNameOfPackage = numberOfSelectedPackages;

        // Clear selection and possibly update UI components
        availablePackagesTable.clearSelection();
        enableArrows();
        checkEnableButton();
    }//GEN-LAST:event_addPackageButtonActionPerformed

    private void removePackageButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_removePackageButtonActionPerformed
        // TODO add your handling code here:
        // Get the model for both tables
        DefaultTableModel selectedModel = (DefaultTableModel) selectedPackagesTable.getModel();
        DefaultTableModel availableModel = (DefaultTableModel) availablePackagesTable.getModel();

        // Get the selected rows from the selected packages table
        int[] selectedRows = selectedPackagesTable.getSelectedRows();

        // Iterate over the selected rows from last to first
        for (int i = selectedRows.length - 1; i >= 0; i--) {
            int modelRow = selectedPackagesTable.convertRowIndexToModel(selectedRows[i]);

            // Assuming 3 columns, retrieve data from all columns
            Object colData1 = selectedModel.getValueAt(modelRow, 0); // Data from column 1
            Object colData2 = selectedModel.getValueAt(modelRow, 1); // Data from column 2
            Object colData3 = selectedModel.getValueAt(modelRow, 2); // Data from column 3

            // Add a new row to the available packages table with data from all 3 columns
            availableModel.addRow(new Object[]{colData1, colData2, colData3});

            // Remove the row from selected packages table
            selectedModel.removeRow(modelRow);
        }

        String numberOfSelectedPackages = String.valueOf(selectedPackagesTable.getRowCount());

        packageNameLabel.setText(numberOfSelectedPackages);

        //packageNameLabel.setText(selectedPackageName);
        publicNameOfPackage = numberOfSelectedPackages;

        // Clear selection and possibly update UI components
        selectedPackagesTable.clearSelection();
        enableArrows();
        checkEnableButton();
    }//GEN-LAST:event_removePackageButtonActionPerformed

    private void gitHubProfileButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_gitHubProfileButtonActionPerformed
        // TODO add your handling code here:
        Main.openWebpage("https://github.com/ReSo7200");
    }//GEN-LAST:event_gitHubProfileButtonActionPerformed

    private void methodsCheckBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_methodsCheckBoxActionPerformed
        // TODO add your handling code here:
        checkEnableButton();
        checkEnableBlackListButtons();
    }//GEN-LAST:event_methodsCheckBoxActionPerformed

    private void classesCheckBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_classesCheckBoxActionPerformed
        // TODO add your handling code here:
        checkEnableButton();
        checkEnableBlackListButtons();
    }//GEN-LAST:event_classesCheckBoxActionPerformed

    private void fieldVariablesCheckBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_fieldVariablesCheckBoxActionPerformed
        // TODO add your handling code here:
        checkEnableButton();
        checkEnableBlackListButtons();
    }//GEN-LAST:event_fieldVariablesCheckBoxActionPerformed

    private void linkedInButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_linkedInButtonActionPerformed
        // TODO add your handling code here:
        Main.openWebpage("https://www.linkedin.com/in/abdalhaleem-altamimi-074b5123a/");
    }//GEN-LAST:event_linkedInButtonActionPerformed

    private void backButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backButtonActionPerformed
        // TODO add your handling code here:
        int response1 = JOptionPane.showConfirmDialog(null,
                "Do you want to remove the folder of the decompiled APK file?",
                "Remove decompiled directory",
                JOptionPane.YES_NO_OPTION,
                JOptionPane.WARNING_MESSAGE
        );
        if (response1 == JOptionPane.YES_OPTION) {
            // If yes, delete the directory
            boolean deleted = Main.deleteDirectory(Main.outputDirFile);
            if (!deleted) {
                JOptionPane.showMessageDialog(null, "Failed to delete existing directory.", "Error", JOptionPane.ERROR_MESSAGE);
            }
        }
        dispose();
        new Main().setVisible(true);
    }//GEN-LAST:event_backButtonActionPerformed

    // Helper method to get selected packages from the table
    private List<String> getSelectedPackagesFromTable() {
        List<String> selectedPackages = new ArrayList<>();

        // Get the total row count
        int rowCount = selectedPackagesTable.getRowCount();

        // Iterate through all rows in the table (not just selected ones)
        for (int row = 0; row < rowCount; row++) {
            // Convert the view row index to the model row index (in case the table is sorted)
            int modelRow = selectedPackagesTable.convertRowIndexToModel(row);

            // Get the package name from the first column (index 0)
            String packageName = (String) selectedPackagesTable.getModel().getValueAt(modelRow, 0);

            // Add the package name to the list
            selectedPackages.add(packageName);
        }

        return selectedPackages;
    }


    private void blackListButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_blackListButtonActionPerformed
        // TODO add your handling code here:
        List<String> selectedPackages = getSelectedPackagesFromTable();  // A method to get selected packages
        if (!selectedPackages.isEmpty()) {
            // Pass the selected packages to the JTree view
            test treeView = new test(selectedPackages);  // Modify 'test' to accept multiple packages
            treeView.setVisible(true);  // Show the JTree window
        } else {
            JOptionPane.showMessageDialog(this, "Please select at least one package to view.");
        }
    }//GEN-LAST:event_blackListButtonActionPerformed

    public static Set<String> getClassesForPackage(String packageName) {
        Set<String> classNames = new HashSet<>();

        // Define the base directory where the decompiled APK is stored
        Path decompiledDir = Paths.get(Main.decompiledApkPath);
        String packageDirectory = packageName.replace('.', File.separatorChar);

        try (Stream<Path> smaliFoldersStream = Files.list(decompiledDir).filter(Files::isDirectory)) {
            smaliFoldersStream.forEach(smaliFolder -> {
                Path smaliFolderPath = smaliFolder.resolve(packageDirectory);
                if (Files.isDirectory(smaliFolderPath)) {
                    try (Stream<Path> filesStream = Files.walk(smaliFolderPath)) {
                        filesStream.filter(Files::isRegularFile).forEach(file -> {
                            String fileName = file.getFileName().toString();
                            // Exclude any class name containing a `$` sign
                            if (fileName.endsWith(".smali") && !fileName.contains("$")) {
                                classNames.add(fileName.replace(".smali", ""));  // Get the class name
                            }
                        });
                    } catch (IOException e) {
                    }
                }
            });
        } catch (IOException e) {
        }

        return classNames;
    }

    public static Map<String, Set<String>> getMethodsForPackage(String packageName) {
        Map<String, Set<String>> methodsMap = new HashMap<>();

        Path decompiledDir = Paths.get(Main.decompiledApkPath);
        String packageDirectory = packageName.replace('.', File.separatorChar);

        Pattern methodPattern = Pattern.compile("\\.method .+ (\\w+)\\(");  // Pattern to find method names

        try (Stream<Path> smaliFoldersStream = Files.list(decompiledDir).filter(Files::isDirectory)) {
            smaliFoldersStream.forEach(smaliFolder -> {
                Path smaliFolderPath = smaliFolder.resolve(packageDirectory);
                if (Files.isDirectory(smaliFolderPath)) {
                    try (Stream<Path> filesStream = Files.walk(smaliFolderPath)) {
                        filesStream.filter(Files::isRegularFile).forEach(file -> {
                            try {
                                List<String> lines = Files.readAllLines(file);
                                String fileName = file.getFileName().toString().replace(".smali", "");

                                // Exclude methods from classes with `$` in the name
                                if (!fileName.contains("$")) {
                                    for (String line : lines) {
                                        Matcher methodMatcher = methodPattern.matcher(line);
                                        if (methodMatcher.find()) {
                                            String methodName = methodMatcher.group(1);
                                            // Exclude methods with a `$` in the method name
                                            if (!methodName.contains("$")) {
                                                methodsMap.computeIfAbsent(fileName, k -> new HashSet<>()).add(methodName);
                                            }
                                        }
                                    }
                                }
                            } catch (IOException e) {
                            }
                        });
                    } catch (IOException e) {
                    }
                }
            });
        } catch (IOException e) {
        }

        return methodsMap;
    }

    public static Map<String, Set<String>> getFieldsForPackage(String packageName) {
        Map<String, Set<String>> fieldsMap = new HashMap<>();

        Path decompiledDir = Paths.get(Main.decompiledApkPath);
        String packageDirectory = packageName.replace('.', File.separatorChar);

        Pattern fieldPattern = Pattern.compile("\\.field\\s+.+\\s+(\\w+)\\s*:\\s*");  // Pattern to find field names

        try (Stream<Path> smaliFoldersStream = Files.list(decompiledDir).filter(Files::isDirectory)) {
            smaliFoldersStream.forEach(smaliFolder -> {
                Path smaliFolderPath = smaliFolder.resolve(packageDirectory);
                if (Files.isDirectory(smaliFolderPath)) {
                    try (Stream<Path> filesStream = Files.walk(smaliFolderPath)) {
                        filesStream.filter(Files::isRegularFile).forEach(file -> {
                            try {
                                List<String> lines = Files.readAllLines(file);
                                String fileName = file.getFileName().toString().replace(".smali", "");

                                // Exclude fields from classes with `$` in the name
                                if (!fileName.contains("$")) {
                                    for (String line : lines) {
                                        Matcher fieldMatcher = fieldPattern.matcher(line);
                                        if (fieldMatcher.find()) {
                                            String fieldName = fieldMatcher.group(1);
                                            // Exclude fields with a `$` in the field name
                                            if (!fieldName.contains("$")) {
                                                fieldsMap.computeIfAbsent(fileName, k -> new HashSet<>()).add(fieldName);
                                            }
                                        }
                                    }
                                }
                            } catch (IOException e) {
                            }
                        });
                    } catch (IOException e) {
                    }
                }
            });
        } catch (IOException e) {
        }

        return fieldsMap;
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Obfuscate.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(() -> {
            new Obfuscate().setVisible(true);
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton addPackageButton;
    private javax.swing.JCheckBox addPrefixCheckBox;
    private javax.swing.JCheckBox addSaltCheckBox;
    private javax.swing.JLabel apkFileNameLabel;
    private javax.swing.JLabel availablePackagesLabel;
    private javax.swing.JTable availablePackagesTable;
    private javax.swing.JButton backButton;
    private javax.swing.JButton blackListButton;
    private javax.swing.JCheckBox classesCheckBox;
    private javax.swing.JTextArea consoleArea;
    private javax.swing.JScrollPane consoleScrollPane;
    private javax.swing.JLabel decompileFolderLabel;
    private javax.swing.JLabel decompileFolderNameLabel;
    private javax.swing.JCheckBox fieldVariablesCheckBox;
    private javax.swing.JButton gitHubProfileButton;
    private javax.swing.JLabel hint1Label;
    private javax.swing.JLabel info2Label;
    private javax.swing.JLabel infoLabel;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JButton linkedInButton;
    private javax.swing.JLabel loadingLabel;
    private javax.swing.JCheckBox localVariablesCheckBox;
    private javax.swing.JCheckBox methodsCheckBox;
    private javax.swing.JLabel noteLabel;
    private javax.swing.JButton obfuscateButton;
    private javax.swing.JPanel obfuscateCBPanel;
    private javax.swing.JLabel obfuscateLabel;
    private javax.swing.JPanel obfuscatePanel;
    private javax.swing.JLabel packageNameLabel;
    private javax.swing.JButton removePackageButton;
    private javax.swing.JTextField searchForPackageField;
    private javax.swing.JTextField searchForPackageFieldTwo;
    private javax.swing.JLabel searchLabel;
    private javax.swing.JLabel searchLabelTwo;
    private javax.swing.JLabel selectedAPKFileLabel;
    private javax.swing.JLabel selectedPackageNameLabel;
    private javax.swing.JLabel selectedPackagesLabel;
    private javax.swing.JTable selectedPackagesTable;
    private javax.swing.JLabel title;
    // End of variables declaration//GEN-END:variables
    private Map<String, Set<String>> methodUsageMap = new HashMap<>();
    private final Set<String> selectedPackageNames = new HashSet<>();
    private static final Map<String, String> classRenameMap = new HashMap<>();
    private static final Map<String, String> methodRenameMap = new HashMap<>();
    private static final Map<String, String> fieldVariableRenameMap = new HashMap<>();
    public static AtomicInteger numberOfRefactoedClasses = new AtomicInteger(0);
    public static AtomicInteger numberOfRefactoredMethods = new AtomicInteger(0);
    public static AtomicInteger numberOfRefactoredLFields = new AtomicInteger(0);
    public static String publicNameOfPackage;
    private final Set<String> refactoredMethodNames = Collections.synchronizedSet(new HashSet<>());
    private final Set<String> refactoredClassNames = Collections.synchronizedSet(new HashSet<>());
    private final Set<String> refactoredFieldVariableNames = Collections.synchronizedSet(new HashSet<>());
    public static Set<String> blacklistedItems = new HashSet<>();

}

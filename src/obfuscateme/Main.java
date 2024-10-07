/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package obfuscateme;

import java.awt.Desktop;
import java.awt.Image;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.concurrent.ExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.SwingWorker;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author Abdalhaleem Altamimi - Student ID: 2113263
 */
public class Main extends javax.swing.JFrame {

    /**
     * Creates new form Main
     */
    public Main() {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | UnsupportedLookAndFeelException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
        // set IconImage
        icon = new ImageIcon(getClass().getResource("img/icon.jpg"));
        setIconImage(icon.getImage());

        initComponents();
        // Center the frame on the screen.
        this.setLocationRelativeTo(null);
        consoleScrollPane.setVisible(false);
//        progressHolderLabel.setVisible(false);
//        progressLabel.setVisible(false);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        mainPanel = new javax.swing.JPanel();
        title = new javax.swing.JLabel();
        selectAPKFileButton = new javax.swing.JButton();
        apkFileNameLabel = new javax.swing.JLabel();
        decompileButton = new javax.swing.JButton();
        selectedAPKFileLabel = new javax.swing.JLabel();
        linkedInButton = new javax.swing.JButton();
        gitHubProfileButton = new javax.swing.JButton();
        logoLabel = new javax.swing.JLabel();
        loadingLabel = new javax.swing.JLabel();
        descriptionLabel = new javax.swing.JLabel();
        infoLabel = new javax.swing.JLabel();
        info2Label = new javax.swing.JLabel();
        consoleScrollPane = new javax.swing.JScrollPane();
        consoleArea = new javax.swing.JTextArea();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("ObfuscateMe");
        setResizable(false);

        mainPanel.setLayout(null);

        title.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        title.setText("ObfuscateMe");
        mainPanel.add(title);
        title.setBounds(370, 20, 114, 25);

        selectAPKFileButton.setText("Select APK file");
        selectAPKFileButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        selectAPKFileButton.setFocusable(false);
        selectAPKFileButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                selectAPKFileButtonActionPerformed(evt);
            }
        });
        mainPanel.add(selectAPKFileButton);
        selectAPKFileButton.setBounds(360, 220, 140, 46);

        apkFileNameLabel.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        apkFileNameLabel.setForeground(new java.awt.Color(255, 0, 0));
        apkFileNameLabel.setText("Please select an APK file");
        mainPanel.add(apkFileNameLabel);
        apkFileNameLabel.setBounds(420, 290, 350, 30);

        decompileButton.setText("Decompile");
        decompileButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        decompileButton.setEnabled(false);
        decompileButton.setFocusable(false);
        decompileButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                decompileButtonActionPerformed(evt);
            }
        });
        mainPanel.add(decompileButton);
        decompileButton.setBounds(360, 340, 140, 46);

        selectedAPKFileLabel.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        selectedAPKFileLabel.setText("Selected APK file:");
        mainPanel.add(selectedAPKFileLabel);
        selectedAPKFileLabel.setBounds(250, 290, 150, 30);

        linkedInButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/obfuscateme/img/linkedin.png"))); // NOI18N
        linkedInButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        linkedInButton.setFocusable(false);
        linkedInButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                linkedInButtonActionPerformed(evt);
            }
        });
        mainPanel.add(linkedInButton);
        linkedInButton.setBounds(70, 440, 50, 50);

        gitHubProfileButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/obfuscateme/img/github-48.png"))); // NOI18N
        gitHubProfileButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        gitHubProfileButton.setFocusable(false);
        gitHubProfileButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                gitHubProfileButtonActionPerformed(evt);
            }
        });
        mainPanel.add(gitHubProfileButton);
        gitHubProfileButton.setBounds(10, 440, 50, 50);

        logoLabel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/obfuscateme/img/final 1 _ 140x130.jpg"))); // NOI18N
        mainPanel.add(logoLabel);
        logoLabel.setBounds(360, 60, 140, 130);

        loadingLabel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/obfuscateme/img/loading.gif"))); // NOI18N
        mainPanel.add(loadingLabel);
        loadingLabel.setBounds(410, 410, 48, 48);
        loadingLabel.setVisible(false);

        descriptionLabel.setText("Obfuscation tool for APK");
        mainPanel.add(descriptionLabel);
        descriptionLabel.setBounds(360, 200, 150, 20);

        infoLabel.setFont(new java.awt.Font("Segoe UI", 2, 14)); // NOI18N
        infoLabel.setText("Developed by Abdalhaleem Altamimi - @ReSo7200");
        mainPanel.add(infoLabel);
        infoLabel.setBounds(550, 440, 340, 20);

        info2Label.setFont(new java.awt.Font("Segoe UI", 2, 12)); // NOI18N
        info2Label.setText("University of Bedfordshire Undergradute Project - Student ID: 2113263");
        mainPanel.add(info2Label);
        info2Label.setBounds(510, 470, 380, 16);

        consoleArea.setEditable(false);
        consoleArea.setBackground(new java.awt.Color(0, 0, 0));
        consoleArea.setColumns(20);
        consoleArea.setFont(new java.awt.Font("Segoe UI", 0, 11)); // NOI18N
        consoleArea.setForeground(new java.awt.Color(255, 255, 255));
        consoleArea.setRows(5);
        consoleScrollPane.setViewportView(consoleArea);

        mainPanel.add(consoleScrollPane);
        consoleScrollPane.setBounds(180, 250, 520, 160);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(mainPanel, javax.swing.GroupLayout.PREFERRED_SIZE, 890, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(mainPanel, javax.swing.GroupLayout.PREFERRED_SIZE, 499, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void selectAPKFileButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_selectAPKFileButtonActionPerformed
        // TODO add your handling code here:
        // JFileChooser configured to select only APK files
        JFileChooser j = new JFileChooser(System.getProperty("user.dir"));
        j.setAcceptAllFileFilterUsed(false);
        j.setFileFilter(new javax.swing.filechooser.FileNameExtensionFilter("APK Files", "apk"));

        // Open the file chooser dialog
        int returnValue = j.showOpenDialog(null);

        // Check that the user has selected a file
        if (returnValue == JFileChooser.APPROVE_OPTION) {
            // Get the selected file
            File selectedFile = j.getSelectedFile();

            // Update the label with the selected file name
            apkFileNameLabel.setText(selectedFile.getName());

            // Store the selected file path in the class member variable
            selectedApkPath = selectedFile.toPath();

            decompileButton.setEnabled(true);
        }
    }//GEN-LAST:event_selectAPKFileButtonActionPerformed

    private void decompileButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_decompileButtonActionPerformed
        // TODO add your handling code here:
        // Ensure an APK file has been selected
        if (selectedApkPath == null) {
            JOptionPane.showMessageDialog(this, "Please select an APK file first.", "No File Selected", JOptionPane.ERROR_MESSAGE);
            return;
        }

        String apkFileName = selectedApkPath.getFileName().toString();
        String apkBaseName = apkFileName.replaceFirst("[.][^.]+$", ""); // Remove the file extension
        JFileChooser fileChooser = new JFileChooser(System.getProperty("user.dir"));

        // Set it to directory selection mode (instead of file selection)
        fileChooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);

        // Show the save dialog and get the user's selection
        int result = fileChooser.showSaveDialog(null);

        switch (result) {
            case JFileChooser.APPROVE_OPTION -> {
                // Get the selected directory
                File selectedDirectory = fileChooser.getSelectedFile();
                // Create the output directory path using the selected directory and APK file name
                outputDirectory = Paths.get(selectedDirectory.getAbsolutePath(), apkBaseName);

                // Check if the directory exists only if user approves a directory
                outputDirFile = outputDirectory.toFile(); // Convert Path to File

                if (outputDirFile.exists()) {
                    // Ask the user if they want to delete the existing directory
                    int response = JOptionPane.showConfirmDialog(
                            this,
                            "The output directory already exists. Do you want to delete it and continue?",
                            "Confirm Overwrite",
                            JOptionPane.YES_NO_OPTION,
                            JOptionPane.WARNING_MESSAGE
                    );
                    if (response == JOptionPane.YES_OPTION) {
                        // If yes, delete the directory
                        boolean deleted = deleteDirectory(outputDirFile);
                        if (!deleted) {
                            JOptionPane.showMessageDialog(this, "Failed to delete existing directory.", "Error", JOptionPane.ERROR_MESSAGE);
                            return;
                        }
                    } else {
                        // User chose not to overwrite, find a new unique directory name
                        outputDirectory = findUniqueDirectory(outputDirectory);
                    }
                }
                // Proceed to APK tool execution
                executeApktool(apkFileName);
            }

            case JFileChooser.CANCEL_OPTION -> {
                // User canceled the operation
                 consoleArea.append("File selection was canceled by the user.");
                 consoleArea.setCaretPosition(consoleArea.getDocument().getLength());
                return; // Stop further execution if the user cancels
            }
            default -> {// If there's some other unexpected result
                consoleArea.append("An unexpected error occurred.");
                consoleArea.setCaretPosition(consoleArea.getDocument().getLength());
            }
        }
    }//GEN-LAST:event_decompileButtonActionPerformed

    private void gitHubProfileButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_gitHubProfileButtonActionPerformed
        // TODO add your handling code here:
        openWebpage("https://github.com/ReSo7200");
    }//GEN-LAST:event_gitHubProfileButtonActionPerformed

    private void linkedInButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_linkedInButtonActionPerformed
        // TODO add your handling code here:
        openWebpage("https://www.linkedin.com/in/abdalhaleem-altamimi");
    }//GEN-LAST:event_linkedInButtonActionPerformed

    public static boolean deleteDirectory(File directoryToBeDeleted) {
        File[] allContents = directoryToBeDeleted.listFiles();
        if (allContents != null) {
            for (File file : allContents) {
                deleteDirectory(file);
            }
        }
        return directoryToBeDeleted.delete();
    }

    private Path findUniqueDirectory(Path baseOutputDirectory) {
        int counter = 1;
        Path uniqueDir = baseOutputDirectory;
        while (Files.exists(uniqueDir)) {
            // Append a numerical suffix to the directory name
            uniqueDir = Paths.get(baseOutputDirectory.toString() + "_" + counter);
            counter++;
        }
        return uniqueDir;
    }

    private void executeApktool(String apkFileName) {
        selectAPKFileButton.setVisible(false);
        decompileButton.setVisible(false);
        loadingLabel.setVisible(true);
        consoleScrollPane.setVisible(true);
        selectedAPKFileLabel.setBounds(220, 220, 350, 30);
        apkFileNameLabel.setBounds(390, 220, 350, 30);
        mainPanel.repaint();
        consoleArea.append("Decompiling APK file: " + selectedApkPath + "\n");
        consoleArea.append("Output directory: " + outputDirectory + "\n");

        String apkToolPath = new File("src/obfuscateme/apktool.jar").getAbsolutePath();
        ProcessBuilder processBuilder = new ProcessBuilder(
                "java", "-jar", apkToolPath, "d", selectedApkPath.toAbsolutePath().toString(), "-o", outputDirectory.toAbsolutePath().toString(), "-f"
        );

        // Redirect error stream to the output stream
        processBuilder.redirectErrorStream(true);

        // SwingWorker to handle the long-running task
        SwingWorker<Boolean, String> worker = new SwingWorker<Boolean, String>() {
            @Override
            protected Boolean doInBackground() throws Exception {
                Process process = processBuilder.start();

                // Read output from the command
                try (BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()))) {
                    String line;
                    while ((line = reader.readLine()) != null) {
                        String cleanLine = "";
                        if (line.startsWith("I:")) {
                        // Remove the "I:" prefix and any leading whitespace
                            cleanLine = line.substring(line.indexOf("I:") + 2).trim();
                        }
                        consoleArea.append(cleanLine + "\n");
                        consoleArea.setCaretPosition(consoleArea.getDocument().getLength());
                        //publish(line); // Publish the progress data to process in the Swing thread
                    }
                }
                // Wait for the process to finish
                int exitCode = process.waitFor();
                return exitCode == 0;
            }

            @Override
            protected void done() {
                // This method is called when the background task (decompilation) is finished
                try {
                    boolean success = get(); // Get the result of the background computation
                    if (success) {
                        decompiledApkPath = outputDirectory.toAbsolutePath().toString();
                        publicAPKFileName = apkFileName;
                        decompileFolderName = String.valueOf(outputDirectory.getFileName());
                        
                        loadingLabel.setVisible(false);
                        consoleArea.append("Decompilation completed successfully.\n");
                        consoleArea.setCaretPosition(consoleArea.getDocument().getLength());
                        // Show the success message
                        JOptionPane.showMessageDialog(null, "Decompilation completed successfully.", "Success", JOptionPane.INFORMATION_MESSAGE);
                        loadingLabel.setVisible(true);
                        
                        // Keep the loading label visible and update the console area
                        consoleArea.append("Analysing decompiled APK... Please wait!\n");
                        consoleArea.setCaretPosition(consoleArea.getDocument().getLength());

                        // Create a new background task to launch the Obfuscate frame
                        SwingWorker<Void, Void> frameWorker = new SwingWorker<Void, Void>() {
                            @Override
                            protected Void doInBackground() throws Exception {
                                // Create and launch the new frame in the background
                                Obfuscate obfuscateFrame = new Obfuscate();
                                obfuscateFrame.setVisible(true);
                                return null;
                            }

                            @Override
                            protected void done() {
                                // Once the new frame is fully visible dispose of the current frame
                                dispose();
                            }
                        };

                        // Execute the background task for launching the new frame
                        frameWorker.execute();

                    } else {
                        // Handle decompilation failure
                        JOptionPane.showMessageDialog(null, "Decompilation failed.", "Decompilation Failed", JOptionPane.ERROR_MESSAGE);
                        selectAPKFileButton.setEnabled(true);
                        decompileButton.setEnabled(true);
                    }
                } catch (InterruptedException | ExecutionException e) {
                    JOptionPane.showMessageDialog(null, "An error occurred during decompilation.", "Error", JOptionPane.ERROR_MESSAGE);
                    selectAPKFileButton.setEnabled(true);
                    decompileButton.setEnabled(true);
                }
            }
        };

        // Start the SwingWorker
        worker.execute();
    }

    public static void openWebpage(String urlString) {
        Desktop desktop = Desktop.isDesktopSupported() ? Desktop.getDesktop() : null;
        if (desktop != null && desktop.isSupported(Desktop.Action.BROWSE)) {
            try {
                URI uri = new URI(urlString);
                desktop.browse(uri);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
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
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Main().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel apkFileNameLabel;
    private javax.swing.JTextArea consoleArea;
    private javax.swing.JScrollPane consoleScrollPane;
    private javax.swing.JButton decompileButton;
    private javax.swing.JLabel descriptionLabel;
    private javax.swing.JButton gitHubProfileButton;
    private javax.swing.JLabel info2Label;
    private javax.swing.JLabel infoLabel;
    private javax.swing.JButton linkedInButton;
    private javax.swing.JLabel loadingLabel;
    private javax.swing.JLabel logoLabel;
    private javax.swing.JPanel mainPanel;
    private javax.swing.JButton selectAPKFileButton;
    private javax.swing.JLabel selectedAPKFileLabel;
    private javax.swing.JLabel title;
    // End of variables declaration//GEN-END:variables
    private Path selectedApkPath;
    private Path outputDirectory;
    public static File outputDirFile;
    public static String decompiledApkPath;
    public static String decompileFolderName;
    public static String publicAPKFileName;
    public static ImageIcon icon;
}

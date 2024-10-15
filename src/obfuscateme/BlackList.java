/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package obfuscateme;

import java.awt.Component;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JTree;
import javax.swing.UIManager;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeCellRenderer;
import javax.swing.tree.DefaultTreeModel;

/**
 *
 * @author abdal
 */
public final class BlackList extends javax.swing.JFrame {

    public static Set<String> blacklistedItemsVisual = new HashSet<>();

    private final Set<String> blacklistedNodes = new HashSet<>();

    class CustomTreeCellRenderer extends DefaultTreeCellRenderer {

        private final Icon classIcon;
        private final Icon methodIcon;
        private final Icon fieldIcon;
        private final Icon packageIcon;

        public CustomTreeCellRenderer() {
            int x = 16;
            int y = 16;
            int c_x = 17;
            int c_y = 17;

            // Load custom icons
            classIcon = new ImageIcon(new ImageIcon(getClass().getResource("/icons/class.png"))
                    .getImage().getScaledInstance(c_x, c_y, java.awt.Image.SCALE_SMOOTH));
            methodIcon = new ImageIcon(new ImageIcon(getClass().getResource("/icons/method.png"))
                    .getImage().getScaledInstance(x, y, java.awt.Image.SCALE_SMOOTH));
            fieldIcon = new ImageIcon(new ImageIcon(getClass().getResource("/icons/field.png"))
                    .getImage().getScaledInstance(x, y, java.awt.Image.SCALE_SMOOTH));
            packageIcon = UIManager.getIcon("FileView.directoryIcon");  // Default folder icon for packages
        }

        @Override
        public Component getTreeCellRendererComponent(JTree tree, Object value, boolean sel, boolean expanded,
                boolean leaf, int row, boolean hasFocus) {
            // Call the super method to ensure the tree cell is rendered
            Component c = super.getTreeCellRendererComponent(tree, value, sel, expanded, leaf, row, hasFocus);

            // Cast the node to DefaultMutableTreeNode
            DefaultMutableTreeNode node = (DefaultMutableTreeNode) value;
            String nodeName = node.toString(); // Get the node's text
            String fullNodeName = getFullNodeName(node);

            // Reset foreground color
            setForeground(java.awt.Color.BLACK); // Default color for non-blacklisted items

            // Check if the node is blacklisted
            if (blacklistedItemsVisual.contains(fullNodeName)) {
                setForeground(java.awt.Color.RED);  // Change text color to red if blacklisted
            }

            // Determine the node type using Obfuscate class methods
            DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) node.getParent();
            if (parentNode == null || node.isRoot()) {
                // Root node (the package)
                setIcon(packageIcon);
            } else if (parentNode.isRoot()) {
                // Class level node (direct child of package)
                if (Obfuscate.getClassesForPackage(parentNode.toString()).contains(nodeName)) {
                    setIcon(classIcon); // Class icon
                }
            } else {
                // Check if this is a method or field
                String parentName = parentNode.toString();  // Class node
                if (Obfuscate.getMethodsForPackage(parentNode.getParent().toString())
                        .getOrDefault(parentName, Collections.emptySet()).contains(nodeName.replace(" (Method)", ""))) {
                    setIcon(methodIcon); // Method icon
                } else if (Obfuscate.getFieldsForPackage(parentNode.getParent().toString())
                        .getOrDefault(parentName, Collections.emptySet()).contains(nodeName.replace(" (Field)", ""))) {
                    setIcon(fieldIcon); // Field icon
                } else {
                    setIcon(classIcon); // Default to class icon
                }
            }

            return c;
        }

        // Helper method to construct the full package/class/method/field name
        private String getFullNodeName(DefaultMutableTreeNode node) {
            StringBuilder fullName = new StringBuilder();
            DefaultMutableTreeNode currentNode = node;

            // Traverse up the tree to construct the full path (package.class.method/field)
            while (currentNode.getParent() != null) {
                fullName.insert(0, currentNode.toString());
                if (currentNode.getParent().getParent() != null) {
                    fullName.insert(0, "."); // Insert '.' between each parent node except the root
                }
                currentNode = (DefaultMutableTreeNode) currentNode.getParent();
            }

            return fullName.toString();
        }

    }

    public void populateTree() {
        DefaultMutableTreeNode root = new DefaultMutableTreeNode("Selected Packages");

        // Iterate through the selected packages passed from Obfuscate
        for (String packageName : packageNames) {  // 'packageNames' is passed in the constructor
            DefaultMutableTreeNode packageNode = new DefaultMutableTreeNode(packageName);

            // Get classes, methods, and fields for each package using the Obfuscate class methods
            Set<String> classes = Obfuscate.getClassesForPackage(packageName);
            Map<String, Set<String>> methodsMap = Obfuscate.getMethodsForPackage(packageName);
            Map<String, Set<String>> fieldsMap = Obfuscate.getFieldsForPackage(packageName);

            // Add classes and their methods/fields to the tree
            for (String className : classes) {
                DefaultMutableTreeNode classNode = new DefaultMutableTreeNode(className);

                // Add methods for this class
                Set<String> methods = methodsMap.getOrDefault(className, Collections.emptySet());
                for (String methodName : methods) {
                    classNode.add(new DefaultMutableTreeNode(methodName + " (Method)"));
                }

                // Add fields for this class
                Set<String> fields = fieldsMap.getOrDefault(className, Collections.emptySet());
                for (String fieldName : fields) {
                    classNode.add(new DefaultMutableTreeNode(fieldName + " (Field)"));
                }

                packageNode.add(classNode);  // Add the class node to the package
            }

            root.add(packageNode);  // Add the package node to the root
        }

        DefaultTreeModel treeModel = new DefaultTreeModel(root);
        jTree1.setModel(treeModel);  // Populate the tree
    }

    // Whitelist selected node
    private void whiteListSelectedNode() {
        DefaultMutableTreeNode selectedNode = (DefaultMutableTreeNode) jTree1.getLastSelectedPathComponent();
        if (selectedNode != null) {
            String nodeName = getFullNodeName(selectedNode);
            blacklistedNodes.remove(nodeName);  // Remove from the blacklist
            blacklistedItemsVisual.remove(nodeName);
            jTree1.repaint();  // Repaint the tree to reflect the changes
        }
    }

    // Blacklist selected node
    private void blacklistSelectedNode() {
        DefaultMutableTreeNode selectedNode = (DefaultMutableTreeNode) jTree1.getLastSelectedPathComponent();
        if (selectedNode != null) {
            String nodeName = getFullNodeName(selectedNode);
            blacklistedNodes.add(nodeName);  // Add the fully qualified name to the blacklist
            blacklistedItemsVisual.add(nodeName);
            jTree1.repaint();  // Repaint the tree to reflect the changes
        }
    }

    // Blacklist the class and all its methods/fields
    private void blacklistClassAndChildren() {
        DefaultMutableTreeNode selectedNode = (DefaultMutableTreeNode) jTree1.getLastSelectedPathComponent();
        if (selectedNode != null) {
            // Get the full package/class name for the selected node
            String nodeName = getFullNodeName(selectedNode);
            blacklistedNodes.add(nodeName);  // Add the class to the blacklist
            blacklistedItemsVisual.add(nodeName);

            // Recursively blacklist all children
            blacklistChildren(selectedNode, nodeName);
            jTree1.repaint();
        }
    }

// Recursively blacklist child nodes
    private void blacklistChildren(DefaultMutableTreeNode parentNode, String parentName) {
        int childCount = parentNode.getChildCount();
        for (int i = 0; i < childCount; i++) {
            DefaultMutableTreeNode childNode = (DefaultMutableTreeNode) parentNode.getChildAt(i);
            String childName = parentName + "." + childNode.toString().replace(" (Method)", "").replace(" (Field)", "");
            blacklistedNodes.add(childName);  // Add child node to the blacklist
            blacklistedItemsVisual.add(getFullNodeName(childNode));
            // Recursively call this function for any further children
            blacklistChildren(childNode, childName);
        }
    }

// Whitelist the class and all its methods/fields
    private void whiteListClassAndChildren() {
        DefaultMutableTreeNode selectedNode = (DefaultMutableTreeNode) jTree1.getLastSelectedPathComponent();
        if (selectedNode != null) {
            // Get the full package/class name for the selected node
            String nodeName = getFullNodeName(selectedNode);
            blacklistedNodes.remove(nodeName);  // Remove the class from the blacklist
            blacklistedItemsVisual.remove(nodeName);

            // Recursively whitelist all children
            whiteListChildren(selectedNode, nodeName);
            jTree1.repaint();  // Repaint the tree to reflect color changes
        }
    }

// Recursively whitelist child nodes
    private void whiteListChildren(DefaultMutableTreeNode parentNode, String parentName) {
        int childCount = parentNode.getChildCount();
        for (int i = 0; i < childCount; i++) {
            DefaultMutableTreeNode childNode = (DefaultMutableTreeNode) parentNode.getChildAt(i);
            String childName = parentName + "." + childNode.toString().replace(" (Method)", "").replace(" (Field)", "");
            blacklistedNodes.remove(childName);  // Remove child node from the blacklist
            blacklistedItemsVisual.remove(getFullNodeName(childNode));
            // Recursively call this function for any further children
            whiteListChildren(childNode, childName);
        }
    }

    // Helper method to construct the full package/class/method/field name
    private String getFullNodeName(DefaultMutableTreeNode node) {
        StringBuilder fullName = new StringBuilder();
        DefaultMutableTreeNode currentNode = node;

        // Traverse up the tree to construct the full path (package.class.method/field)
        while (currentNode.getParent() != null) {
            fullName.insert(0, currentNode.toString());
            if (currentNode.getParent().getParent() != null) {
                fullName.insert(0, "."); // Insert '.' between each parent node except the root
            }
            currentNode = (DefaultMutableTreeNode) currentNode.getParent();
        }

        return fullName.toString();
    }

    private void confirmBlacklist() {
        Obfuscate.blacklistedItems = new HashSet<>(blacklistedNodes);
        this.dispose();  // Close the current window
    }

    private final List<String> packageNames;

    /**
     * Creates new form test
     *
     * @param packageNames
     */
    public BlackList(List<String> packageNames) {
        initComponents();
        this.packageNames = packageNames;
        // If you already have jTree1 in your NetBeans form, you don't need this line.
        populateTree();  // Populate the tree with packages, classes, methods, and fields
        jTree1.setCellRenderer(new CustomTreeCellRenderer());

        blackListButton.addActionListener(e -> blacklistSelectedNode());
        blackListAllButton.addActionListener(e -> blacklistClassAndChildren());

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTree1 = new javax.swing.JTree();
        blackListButton = new javax.swing.JButton();
        blackListAllButton = new javax.swing.JToggleButton();
        whiteListButton = new javax.swing.JButton();
        whiteListAllButton = new javax.swing.JToggleButton();
        jButton1 = new javax.swing.JButton();
        hint1Label = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setResizable(false);

        jPanel1.setLayout(null);

        jScrollPane1.setViewportView(jTree1);

        jPanel1.add(jScrollPane1);
        jScrollPane1.setBounds(20, 60, 330, 340);

        blackListButton.setText("Blacklist");
        blackListButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        blackListButton.setFocusable(false);
        jPanel1.add(blackListButton);
        blackListButton.setBounds(380, 80, 140, 40);

        blackListAllButton.setText("Blacklist All");
        blackListAllButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        blackListAllButton.setFocusable(false);
        jPanel1.add(blackListAllButton);
        blackListAllButton.setBounds(380, 200, 140, 40);

        whiteListButton.setText("Whitelist");
        whiteListButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        whiteListButton.setFocusable(false);
        whiteListButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                whiteListButtonActionPerformed(evt);
            }
        });
        jPanel1.add(whiteListButton);
        whiteListButton.setBounds(380, 140, 140, 40);

        whiteListAllButton.setText("Whitelist All");
        whiteListAllButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        whiteListAllButton.setFocusable(false);
        whiteListAllButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                whiteListAllButtonActionPerformed(evt);
            }
        });
        jPanel1.add(whiteListAllButton);
        whiteListAllButton.setBounds(380, 260, 140, 40);

        jButton1.setText("Confirm");
        jButton1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jButton1.setFocusable(false);
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1);
        jButton1.setBounds(120, 420, 140, 50);

        hint1Label.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        hint1Label.setText("Select what to black/white list from obfuscation:");
        jPanel1.add(hint1Label);
        hint1Label.setBounds(20, 10, 360, 40);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 550, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 491, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        confirmBlacklist();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void whiteListAllButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_whiteListAllButtonActionPerformed
        // TODO add your handling code here:
        whiteListClassAndChildren();
    }//GEN-LAST:event_whiteListAllButtonActionPerformed

    private void whiteListButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_whiteListButtonActionPerformed
        // TODO add your handling code here:
        whiteListSelectedNode();
    }//GEN-LAST:event_whiteListButtonActionPerformed

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
            java.util.logging.Logger.getLogger(BlackList.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(BlackList.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(BlackList.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(BlackList.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JToggleButton blackListAllButton;
    private javax.swing.JButton blackListButton;
    private javax.swing.JLabel hint1Label;
    private javax.swing.JButton jButton1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTree jTree1;
    private javax.swing.JToggleButton whiteListAllButton;
    private javax.swing.JButton whiteListButton;
    // End of variables declaration//GEN-END:variables

}

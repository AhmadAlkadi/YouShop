/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package YouShop;

import javax.swing.JOptionPane;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.table.DefaultTableModel;

public class Buy extends javax.swing.JPanel {

    private static final String username = "root";
    private static final String password = "root";
    private static final String dataConnect = "jdbc:mysql://localhost:3306/youshop";
    /**
     * Creates new form Buy
     */
    public Buy() {
        initComponents();
        DisplayTabel();
    }
    
    public String getItemNameFromSell(int itemID){
        String itemName = "";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dataConnect,username,password);
            
            String sql = "select * " +
                "FROM youshop.itemtobuy, youshop.buyitemselling "
                    +"WHERE youshop.itemtobuy.itemID = youshop.buyitemselling.itemID"
                    + " AND youshop.itemtobuy.itemID = '"+itemID+"'";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                itemName = rs.getString("ItemName");
            }
            //jTable1.setModel(DbUtils.resultSetToTableModel(rs));
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        return itemName;
    }
    
    public String getNameFromSell(int itemID){
        String name = "";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dataConnect,username,password);
            
            String sql = "select * " +
                "FROM youshop.itemtobuy, youshop.buyitemselling "
                    +"WHERE youshop.itemtobuy.itemID = youshop.buyitemselling.itemID"
                    + " AND youshop.itemtobuy.itemID = '"+itemID+"'";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                name = rs.getString("userName");
            }
            //jTable1.setModel(DbUtils.resultSetToTableModel(rs));
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        return name;
    }
    
    public String getTimeUpdatedForSell(int itemID){
        String timeUpdated = "";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dataConnect,username,password);
            
            String sql = "select * " +
                "FROM youshop.itemtobuy, youshop.buyitemselling "
                    +"WHERE youshop.itemtobuy.itemID = youshop.buyitemselling.itemID"
                    + " AND youshop.itemtobuy.itemID = '"+itemID+"'";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                timeUpdated = rs.getString("lastTimeUpdated");
            }
            //jTable1.setModel(DbUtils.resultSetToTableModel(rs));
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        return timeUpdated;
    }
    
    public String getValidationForSell(int itemID){
        String validation = "";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dataConnect,username,password);
            
            String sql = "select * " +
                "FROM youshop.itemtobuy, youshop.buyitemselling "
                    +"WHERE youshop.itemtobuy.itemID = youshop.buyitemselling.itemID"
                    + " AND youshop.itemtobuy.itemID = '"+itemID+"'";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                validation = rs.getString("itemValidation");
            }
            //jTable1.setModel(DbUtils.resultSetToTableModel(rs));
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        return validation;
    }
    
    public void DisplayTabel(){
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dataConnect,username,password);
            
            String sql = "select * " +
                "FROM youshop.buyitemselling ";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                int itemID = rs.getInt("itemID");
                String itemValidation = getValidationForSell(itemID);
                if(itemValidation.equals("1")){
                String itemName = getItemNameFromSell(itemID);
                String price = rs.getString("sellingPrice");
                String userName = getNameFromSell(itemID);
                String timeUpdated = getTimeUpdatedForSell(itemID);
                String tbData[] = {String.valueOf(itemID),itemName,price,userName,timeUpdated};
                DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
                model.addRow(tbData);
                }
            }
            //jTable1.setModel(DbUtils.resultSetToTableModel(rs));
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
        }
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
        jTable1 = new javax.swing.JTable();
        jPanel3 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();

        setBackground(new java.awt.Color(247, 220, 236));
        setPreferredSize(new java.awt.Dimension(628, 473));

        jPanel1.setBackground(new java.awt.Color(0, 153, 153));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Item ID", "Item Name", "Price", "Sold by User", "Last Time Updated"
            }
        ));
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 332, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel3.setBackground(new java.awt.Color(255, 255, 255));
        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel1.setText("Item Select Insert Item ID:");

        jButton1.setText("Select");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 321, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton1)
                .addContainerGap(28, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1))
                .addContainerGap(38, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_jTable1MouseClicked

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        BuyingItem open = new BuyingItem();
        int itemData = Integer.valueOf(jTextField1.getText());
        boolean checker = false;
        if(itemData > -1){
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dataConnect,username,password);
            
            String sql = "select * FROM youshop.itemtobuy where itemID = '"+itemData+"'";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                open.itemName.setText(rs.getString("ItemName"));
                open.itemPrice.setText(rs.getString("price"));
                open.itemDescription.setText(rs.getString("ItemDescription"));
                if(Integer.valueOf(rs.getString("itemValidation")) == 1){
                    checker = true;
                    open.validation.setText("Item Valid");
                }
                else{
                    JOptionPane.showMessageDialog(null, "you have selected an item that is not in the list");}
            }
            //jTable1.setModel(DbUtils.resultSetToTableModel(rs));
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        if(checker == true){
            open.setValueOfUserID(itemData);
            open.setVisible(true);
        }
        }
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}

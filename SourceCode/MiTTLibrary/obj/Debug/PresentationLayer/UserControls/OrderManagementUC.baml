   M S B A M L   `   `   `  ����F  BMiTTLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:MiTTLibrary.PresentationLayer.UserControls*MiTTLibrary.PresentationLayer.UserControls  5      B    <MiTTLibrary.PresentationLayer.UserControls.OrderManagementUC   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jlocal8clr-namespace:MiTTLibrary.PresentationLayer.UserControls     5      $
��auto��5      $��Visible=�6+   .��5	      � $��0,0,0,0q�6   $��Visible=�6   .+�5
   
   �� .+�5      ��   �� Orientation$  
Horizontal=�6   $��5,50,5,1q�62   .+�5      �� -   5        $��reloadButton��5      $��ReLoad��6H   $��1,1,1,1q�6Y   $
��Left=�6j   $	��Top=�6�   �� 5      -   5        $��
saveButton��5      $
��Save��6D   $��1,1,1,1q�6S   $
��Left=�6d   $	��Top=�6�   $��75��6�   �� 5      -   5        $��deleteButton��5      $��Delete��6H   $��1,1,1,1q�6Y   $
��Left=�6j   $	��Top=�6�   $��75��6�   �� 5      -   5        $��manageOrderDetailsButton��5      $��Manage Order Details��6:   $��1,1,1,1q�6�   $
��Left=�6�   $	��Top=�6�   $
��auto��6�   �� 5      $	��Id:��6   $��1,1,1,1q�6&   $
��Left=�67   $	��Top=�6R   �� 5      -   5        $��	idTextBox��5      $��1,1,1,1q�6+   $
��Left=�6<   $��23��6W    �� TextWrapping$
 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��120��6�   �� 5      -   5        $��searchButton��5      $��Search��6H   $��1,1,1,1q�6Y   $
��Left=�6j   $	��Top=�6�   $��75��6�   5      �� 5      $��5,1,5,1q�6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGrid��5      $	��160��6E      CanUserReorderColumns .    CanUserResizeColumns .    CanUserResizeRows .     CanUserSortColumns .    AutoGenerateColumns .  $	��Top=�6  $��5,1,5,1q�6  ��6-   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Order Id��6D   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6-   �� *Id+6D   4  .System.Windows.Controls.DataGridComboBoxColumn  5      -   5        userIdComboBox��$	 User Id��5   I      SelectedItemBinding 6[   �� *UserID+  5      $	 Customer Name��6O   
 6-   �� *CustomerName+6O     5      $	 Receiving Phone��6P   
 6-   �� *ReceivingPhone+6P     5      $
	 Note��6G   
 6-   �� *Note+6G   4  .System.Windows.Controls.DataGridTemplateColumn  5      $	 Buy Date��61      CellTemplate 5      �� 5    "   .R�5!   &   �� ��60   �� *	BuyDate+5"   #      CellEditingTemplate 5$      �� 5%   "   .R�5&   &   (  "System.Windows.Controls.DatePicker     DisplayDateEnd$ 
2015-01-01X�6R      DisplayDateStart$ 
2020-12-31X�6n      SelectedDate 61   �� *	BuyDate+6n   5'   #   5)      4  .System.Windows.Controls.DataGridCheckBoxColumn  5*      $	 Status Order��6Q   
 61   �� *StatusOrder+6Q   5-      5.      �� 5/      .+�50      � -	   5        $��managementGrid��50      6/   � 51      -
   5        $��viewGrid��51      6)   52      54      55      57      
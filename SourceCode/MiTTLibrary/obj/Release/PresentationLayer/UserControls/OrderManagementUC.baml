   M S B A M L   `   `   `  ���� F  BMiTTLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:MiTTLibrary.PresentationLayer.UserControls*MiTTLibrary.PresentationLayer.UserControls  B    <MiTTLibrary.PresentationLayer.UserControls.OrderManagementUC   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     Jlocal8clr-namespace:MiTTLibrary.PresentationLayer.UserControls     $
��auto��$��Visible=�.��� $��0,0,0,0q�$��Visible=�.+��� .+���   �� Orientation$  
Horizontal=�$��5,50,5,1q�.+��� -   $��	headLabel��$��Manage Orders��$��10,1,5,1q��� -   $��reloadButton��$��ReLoad��$��1,1,1,1q�$
��Left=�$	��Top=��� -   $��
saveButton��$
��Save��$��1,1,1,1q�$
��Left=�$	��Top=�$��75���� -   $��deleteButton��$��Delete��$��1,1,1,1q�$
��Left=�$	��Top=�$��75���� -   $��manageOrderDetailsButton��$��Manage Order Details��$��1,1,1,1q�$
��Left=�$	��Top=�$
��auto���� $	��Id:��$��1,1,1,1q�$
��Left=�$	��Top=��� -   $��	idTextBox��$��1,1,1,1q�$
��Left=�$��23�� �� TextWrapping$
 Wrap=�$�� ��$	��Top=�$	��120���� -   $��searchButton��$��Search��$��1,1,1,1q�$
��Left=�$	��Top=�$��75���� $��5,1,5,1q�.+�&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$	��160��   CanUserReorderColumns .    CanUserResizeColumns .    CanUserResizeRows .     CanUserSortColumns .    AutoGenerateColumns .  $	��Top=�$��5,1,5,1q�����    Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn	   Header$	 Order Id��1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 �� *Id+4  .System.Windows.Controls.DataGridComboBoxColumn  -	   userIdComboBox��$	 User Id��   SelectedItemBinding �� *UserId+  $	 Customer Name��
 �� *CustomerName+  $	 Receiving Phone��
 �� *ReceivingPhone+  $
	 Note��
 �� *Note+4  .System.Windows.Controls.DataGridTemplateColumn  $	 Buy Date��   CellTemplate �� .R��� ���� *	BuyDate+   CellEditingTemplate �� .R�(  "System.Windows.Controls.DatePicker     DisplayDateEnd$ 
2015-01-01X�   DisplayDateStart$ 
2020-12-31X�   SelectedDate �� *	BuyDate+4  .System.Windows.Controls.DataGridCheckBoxColumn  $	 Status Order��
 �� *StatusOrder+�� .+�� -
   $��managementGrid��� -   $��viewGrid��
   M S B A M L   `   `   `  ����  WpfBooks    WpfBooks.Views.BookWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  	Book CRUD��5   	   $	��600��6   $	��900��6(    � WindowStartupLocation$ CenterScreen=�5   	   ���#1F1C2C.��5      �� ���#CCCCCC$��2q�6#   ._�5	   
   � .+�5      �� $��Gestion des Livres��6   $��Center=�5      $	��Top=�65   $��28(�5      $
��Bold"�6&   
�������$��0,40,0,0q�5       J� Opacity$ 0Q�6*    � Triggers 5      :� 5       :� RoutedEvent$ Loaded��6#   .[�5      �� .��5      �� .��5   "   W�  �� TargetProperty$ Opacity�62    W� From 05   2   	 W� To 16;    g� Duration$ 0:0:1.5D�6B   W� 5   "   $, &RenderTransform.(TranslateTransform.Y)�62    -205   2    06=   $ 0:0:1.5D�6D   5      5      5      z�5      T� 5      	 T� Y$		 -20Q�6)   5      &   System.Windows.Controls.DataGrid  5!      
   AutoGenerateColumns$
 False��65      CanUserAddRows$ False��5"         
IsReadOnly$
 True��6.   $��20,100,20,20q�6@   ���#1F1C2C   RowBackground �#35304c   AlternatingRowBackground �#1F1C2C���#1F1C2C   GridLinesVisibility$
 None=�5%   ,   $��0q�6G      HeadersVisibility$ Column=�5&         SelectionMode$ Single=�62   ��5!      �� *Books+ � 	Resources 5'      *  $System.Windows.Controls.DataGridCell �� 
TargetType �� Property �� Value��%�   '        '�� J     �� 5(      "  6   .�5)      ��  � ��
 �����67   5*      �� 5+      " ��6   .�5,      ��  � ��
 �����67   5-      5.         Columns 5/      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *Id+6L     51      $ Titre��6)   $ * 6R    68   �� *Title+6R     52      $ Auteur��6)   $ * 6T    69   �� *Author+6T   4  .System.Windows.Controls.DataGridCheckBoxColumn  53      $ 
Disponible��6-   $ * 6_    6A   �� *	Available+6_   4  .System.Windows.Controls.DataGridTemplateColumn  54      $ Actions��6-   $ * 6>      CellTemplate 55      �� 56      .R�57   "   ��  �� Orientation$ 
Horizontal=�6-   $��Center=�6F   .+�58   &   �� -   5        $��Modifier��58   -   $��80��59   -   $��5q�68   ���#4CAF50
������� � Cursor$
 Hand��5:   -   $��0q�6;   
 � Tag 58   Y   �� 5;   '   �� 5<   &   -   5        $��	Supprimer��5<   -   $��80��5=   -   $��5q�68   ���#FF6F00
�������$
 Hand��5>   -   $��0q�6;    5<   Z   �� 5?   '   5@   #   5A      5C      5E      �� 5G      $ 
Horizontal=�6   $��Center=�62   $��Bottom=�6O   $��20q�6j   .+�5H      �� -   5        $��Ajouter un Livre��5H      $	��200��6J   $��50��6V   $��16(�5I      ���#FF6F00
�������$
 Hand��5J      $��0q�6'   ��5K      �� 5L      " ��6    .�5M      ��  � z� 5N   "   T� 5O   &   $	 0Q�69   5Q       �� Triggers 5R      P� 5S   "    P� Property �@J�IsMouseOver  P� Value$
  True��6A   ! N� EnterActions! 5T   &   �� 5U   *   .��5V   .   �� .��5W   2   W� $, &RenderTransform.(TranslateTransform.Y)�5X   5    05Y   5    -106>   $ 0:0:0.1D�6G   " g� AutoReverse$
" True��6Z   5Z   /   5[   +   . �5]   &   ��  � �� �#FF8F006C   5^   #   5`      ��5b      �� 5c      # �� 
TargetType"# ��6*   .R�5d      � .+�5e   "   �� #��z��6)   $ �� CornerRadius$$ 15��5f   )   �� 5g   "   $��Center=�63   $��Center=�5h   3   5i      5j      5l      5m      5n      5o      5p      
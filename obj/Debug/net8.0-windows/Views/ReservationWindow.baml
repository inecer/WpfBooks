   M S B A M L   `   `   `  ����  WpfBooks&     WpfBooks.Views.ReservationWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  Reservation CRUD��5   	   $	��600��6"   $	��900��6/    � WindowStartupLocation$ CenterScreen=�5   	   ���#1F1C2C.��5      �� ���#CCCCCC$��2q�6#   ._�5   
   � .+�5	      �� $��Gestion des Réservations��6   $��Center=�5
      $	��Top=�65   $��28(�5      $
��Bold"�6&   
�������$��0,40,0,0q�5       J� Opacity$ 0Q�6*    � Triggers 5      :� 5       :� RoutedEvent$ Loaded��6#   .[�5      �� .��5      �� .��5   "   W�  �� TargetProperty$ Opacity�62    W� From 05   2   	 W� To 16;    g� Duration$ 0:0:1.5D�6B   W� 5   "   $, &RenderTransform.(TranslateTransform.Y)�62    -205   2    06=   $ 0:0:1.5D�6D   5      5      5      z�5      T� 5      	 T� Y$		 -20Q�6)   5      &   System.Windows.Controls.DataGrid  5      
   AutoGenerateColumns$
 False��6<      CanUserAddRows$ False��5          
IsReadOnly$
 True��6.   $��20,100,20,20q�6@   ���#1F1C2C   RowBackground �#35304c   AlternatingRowBackground �#1F1C2C���#1F1C2C   GridLinesVisibility$
 None=�5#   ,   $��0q�6G      HeadersVisibility$ Column=�5$         SelectionMode$ Single=�62   ��5      �� *Reservations+ � 	Resources 5%      *  $System.Windows.Controls.DataGridCell �� 
TargetType �� Property �� Value��%�   '        '�� J     �� 5&      "  6   .�5'      ��  � ��
 �����67   5(      �� 5)      " ��6   .�5*      ��  � ��
 �����67   5+      5,         Columns 5-      0  *System.Windows.Controls.DataGridTextColumn  5.      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *Id+6L     5/      $ BookId��6)   $ * 6T    69   �� *BookId+6T     50      $ UserName��6)   $ * 6X    6;   �� *
UserName+6X     51      $ ReservationDate��6)   $ * 6f    6B   �� *ReservationDate+6f   4  .System.Windows.Controls.DataGridTemplateColumn  52      $ 
ReturnDate��6-   $ * 6A      CellTemplate 53      �� 54      .R�55   "   �� ��6,   �� *
ReturnDate+ �� StringFormat$ 
yyyy-MM-dd��56      58        59      $ Actions��6-   $ * 6>    5:      �� 5;      .R�5<   "   ��  �� Orientation$ 
Horizontal=�6-   $��Center=�6F   .+�5=   &   �� -   5        $��Modifier��5=   -   $��80��5>   -   $��5q�68   ���#4CAF50
������� � Cursor$
 Hand��5?   -   $��0q�6;   
 � Tag 5=   `   �� 5@   '   �� 5A   &   -   5        $��	Supprimer��5A   -   $��80��5B   -   $��5q�68   ���#FF6F00
�������$
 Hand��5C   -   $��0q�6;    5A   a   �� 5D   '   5E   #   5F      5H      5J      �� 5M      $ 
Horizontal=�6   $��Center=�62   $��Bottom=�6O   $��20q�6j   .+�5N      �� -   5        $��Ajouter une Réservation��5N      $	��200��6X   $��50��6d   $��16(�5O      ���#FF6F00
�������$
 Hand��5P      $��0q�6'   ��5Q      �� 5R      " ��6    .�5S      ��  � z� 5T   "   T� 5U   &   $	 0Q�69   5W       �� Triggers 5X      P� 5Y   "     P� Property  �@J�IsMouseOver! P� Value$
! True��6A   " N� EnterActions" 5Z   &   �� 5[   *   .��5\   .   �� .��5]   2   W� $, &RenderTransform.(TranslateTransform.Y)�5^   5    05_   5    -106>   $ 0:0:0.1D�6G   # g� AutoReverse$
# True��6Z   5`   /   5a   +   . �5c   &   ��  � �� �#FF8F006C   5d   #   5f      ��5h      �� 5i      $ �� 
TargetType"$ ��6*   .R�5j      � .+�5k   "   �� #��z��6)   % �� CornerRadius$% 15��5l   )   �� 5m   "   $��Center=�63   $��Center=�5n   3   5o      5p      5r      5s      5t      5u      5v      
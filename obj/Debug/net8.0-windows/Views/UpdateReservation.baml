   M S B A M L   `   `   `  ����C  ?WpfBooks, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WpfBooks.ViewModelsWpfBooks.ViewModels  5   	   &     WpfBooks.Views.UpdateReservation   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   8
viewModels!clr-namespace:WpfBooks.ViewModels     5   	     � Title$  Modifier une Réservation��5   	   $	��550��6*   $	��600��67    � WindowStartupLocation$ CenterScreen=�5   	   ���#1F1C2C � DataContext 5      .   (WpfBooks.ViewModels.ReservationViewModel  5   
   .��5      �� ���#CCCCCC$��2q�6#   ._�5   
   � .+�5      �� $��Modifier une Réservation��6   $��Center=�5      $	��Top=�65   $��28(�5      $
��Bold"�6&   
�������$��0,40,0,0q�5       J� Opacity$ 0Q�6*    � Triggers 5      :� 5       :� RoutedEvent$ Loaded��6#   .[�5      �� .��5      �� .��5   "   W�  �� TargetProperty$ Opacity�62    W� From 05   2   	 W� To 16;   	 g� Duration$	 0:0:1.5D�6B   W� 5   "   $, &RenderTransform.(TranslateTransform.Y)�62    -205   2    06=   $	 0:0:1.5D�6D   5      5      5      z�5      T� 5      
 T� Y$	
 -20Q�6)   5!      �� 5$      $��Center=�6   $��Center=�64   $��20q�6Q   .+�5&      � $��5q�6   .+�5'      �� -   5         ��Name$ 	IdTextBox��5'      $	��300��61   $��40��6=   $��10q�6I   ���#35304c
�������
�������$��1q�5(   b    �� 
IsReadOnly$
 True��5)   W   ��6   �� *Id+ �� UpdateSourceTrigger$ PropertyChanged=�6W   5*      � 5-      $��5q�6   .+�5.      �� -   5         ��Name$ BookComboBox��5.      $	��300��65   $��40��6A   $��10q�6M   ���#35304c
���   ����#4CAF50$��1q�5/   ]   ��50      �� *Books+ �� SelectedItem 6=   �� *SelectedBook+$ PropertyChanged=���51      �� 52      .R�53   "   �� .+�54   &   �� ���#0f9ddf��60   �� *Title+6G   �� 55   &   
���������60   �� *Author+6H   �� 56   &   ��60   �� *	Available+ "  BooleanToAvailabilityConverter �� 	Converter# [  ��57   *   �� 58   .    �� 
TargetType" ��64    �� Triggers 59   2   �� 5:   6    �� Binding 6B   �� *	Available+ �� Value True6`   .a�5;   :   ��  �� Property � �� �� Value
 � � �6W   5<   7   �� 5=   6    6B   �� *	Available+	 False6`   .a�5>   :   ��  � ��
 �  ��6W   5?   7   5A   /   5C   '   5D   #   5E      5G      5H      � 5K      $��5q�6   .+�5L      �� -   5        $ UserNameTextBox��5L      $	��300��67   $��40��6C   $��10q�6O   ���#35304c
����������#4CAF50$��1q�5M   \   ��5N      �� *
UserName+$ PropertyChanged=��� 5O      $��Nom de l'utilisateur��6     J� IsHitTestVisible$ False��6<   
�������$��5,0,0,0q�5P   2   $��Center=�5Q       y�5R       �� *Text.IsEmpty+ �� ElementName$ UserNameTextBox��   BooleanToVisibilityConverter# [ 5S      � 5V      $��5q�6   .+�5W      (  "System.Windows.Controls.DatePicker  -   5          Name$ ReservationDatePicker��5W   !   $	��300��6@   $��40��6L   $��10q�6X   ���#35304c���#4CAF50���#4CAF50$��1q�5X   a      SelectedDate 5Y   !   �� *ReservationDate+$ PropertyChanged=��� 5Z      $��Date de Réservation��6    $ False��6;   
�������$��5,0,0,0q�5[   2   $��Center=�5\       y�5]       �� *SelectedDate+$ ReservationDatePicker��# [ 5^      � 5a      $��5q�6   .+�5b        -   5        $ ReturnDatePicker��5b   !   $	��300��6;   $��40��6G   $��10q�6S   ���#35304c���#4CAF50���#4CAF50$��1q�5c   a    5d   !   �� *
ReturnDate+$ PropertyChanged=��� 5e      $��Date de Retour��6    $ False��66   
�������$��5,0,0,0q�5f   2   $��Center=�5g       y�5h       �� *SelectedDate+$ ReturnDatePicker��# [ 5i      �� 5l       �� Orientation$ 
Horizontal=�6   $��Center=�66   $��Bottom=�6S   $��20q�6n   .+�5m      �� -   5        $��Modifier��5m      $	��200��6K   $��50��6W   $��16(�5n      ���#FF6F00
������� � Cursor$
 Hand��5o      $��0q�6+   ��5p      �� 5q      " ��6$   .�5r   "   ��  � z� 5s   &   T� 5t   *   $
 0Q�6=   5v   #    5w   "   P� 5x   &    P� Property �@J�IsMouseOver P� Value$
 True��6E    N� EnterActions 5y   *   �� 5z   .   .��5{   2   �� .��5|   6   W� $, &RenderTransform.(TranslateTransform.Y)�5}   9    05~   9    -106B   $	 0:0:0.1D�6K     g� AutoReverse$
  True��6^   5   3   5�   /   . �5�   *   ��  � �� �#FF8F006G   5�   '   5�      ��5�      �� 5�      ! �� 
TargetType"! ��6.   .R�5�   "   � .+�5�   &   �� #��z��6-   " �� CornerRadius$" 15��5�   -   �� 5�   &   $��Center=�67   $��Center=�5�   7   5�   #   5�      5�      5�      5�      5�      5�      5�      
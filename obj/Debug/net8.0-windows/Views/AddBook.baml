   M S B A M L   `   `   `  ����  WpfBooks    WpfBooks.Views.AddBook   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Ajouter un Livre��5   	   $	��500��6"   $	��600��6/    � WindowStartupLocation$ CenterScreen=�5   	   ���#1F1C2C.��5      �� ���#CCCCCC$��2q�6#   ._�5   
   � .+�5	      �� $��Ajouter un Livre��6   $��Center=�5
      $	��Top=�65   $��28(�5      $
��Bold"�6&   
�������$��0,40,0,0q�5       J� Opacity$ 0Q�6*    � Triggers 5      :� 5       :� RoutedEvent$ Loaded��6#   .[�5      �� .��5      �� .��5   "   W�  �� TargetProperty$ Opacity�62    W� From 05   2   	 W� To 16;    g� Duration$ 0:0:1.5D�6B   W� 5   "   $, &RenderTransform.(TranslateTransform.Y)�62    -205   2    06=   $ 0:0:1.5D�6D   5      5      5      z�5      T� 5      	 T� Y$		 -20Q�6)   5      �� 5      $��Center=�6   $��Center=�64   $��20q�6Q   .+�5!      � $��5q�6   .+�5"      �� -   5        
 ��Name$
 TitleTextBox��5"      $	��300��64   $��40��6@   $��10q�6L   ���#35304c
����������#4CAF50$��1q�5#   \   �� 5$      $��Titre��6     J� IsHitTestVisible$ False��6-   
�������$��5,0,0,0q�5%   2   $��Center=�5&       y�5'       �� *Text.IsEmpty+ �� ElementName$ TitleTextBox��    BooleanToVisibilityConverter �� 	Converter# [  5(      � 5+      $��5q�6   .+�5,      �� -   5        $
 AuthorTextBox��5,      $	��300��65   $��40��6A   $��10q�6M   ���#35304c
����������#4CAF50$��1q�5-   \   �� 5.      $��Auteur��6    $ False��6.   
�������$��5,0,0,0q�5/   2   $��Center=�50       y�51       �� *Text.IsEmpty+$ AuthorTextBox��# [  52      �� 55      -   5         ��Name$ AvailableCheckBox��55      $��
Disponible��66   
�������$��5q�6^   ���#35304c���#4CAF50$��1q�56   F   �� 59       �� Orientation$ 
Horizontal=�6   $��Center=�66   $��Bottom=�6S   $��20q�6n   .+�5:      �� -   5        $��Ajouter��5:      $	��200��6G   $��50��6S   $��16(�5;      ���#FF6F00
������� � Cursor$
 Hand��5<      $��0q�6+   ��5=      �� 5>       �� 
TargetType" ��6$   .�5?   "   ��  �� Property � z� �� Value 5@   &   T� 5A   *   $	 0Q�6=   5C   #    �� Triggers 5D   "   P� 5E   &    P� Property �@J�IsMouseOver P� Value$
 True��6E    N� EnterActions 5F   *   �� 5G   .   .��5H   2   �� .��5I   6   W� $, &RenderTransform.(TranslateTransform.Y)�5J   9    05K   9    -106B   $ 0:0:0.1D�6K    g� AutoReverse$
 True��6^   5L   3   5M   /   . �5O   *   ��  � �� �#FF8F006G   5P   '   5R      ��5T      �� 5U       �� 
TargetType" ��6.   .R�5V   "   � .+�5W   &   �� #��z��6-    �� CornerRadius$ 15��5X   -   �� 5Y   &   $��Center=�67   $��Center=�5Z   7   5[   #   5\      5^      5_      5`      5a      5b      5c      
   M S B A M L   `   `   `  ����  WpfBooks    WpfBooks.Views.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  Accueil��5   	   $	��650��6   $
��1000��6&    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	   
������  � Triggers 5
      :� 5   
    :� RoutedEvent$ Window.Loaded��6   .[�5      �� .��5      ��  g� RepeatBehavior$ Forever��6   .��5      W�  �� 
TargetName$ GradientStop1��5       �� TargetProperty$ Offset�5      	 W� From	 0.05      	
 W� To
 1.06$    g� Duration$ 0:0:4D�6-    g� AutoReverse$
 True��6>   W� 5      $ GradientStop2��5      $ Offset�5      	 1.05      
 2.06$   $ 0:0:4D�6-   $
 True��6>   5      5      5      .��5      �� ���#CCCCCC$��2q�6#   ._�5   
   � ��5       �� 5!       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,0&�67   -   5        AnimatedGradientBrush��.��5"      �  � Color$ #1F1C2C��6#    � Offset$	 0.0Q�63   -   5        GradientStop1��5"   @   � 5#      $ #928DAB��6#   $	 1.0Q�63   -   5        GradientStop2��5#   @   5$      .+�5(      �� $*��$Bienvenue sur le CRUD Administrateur��6   $��Center=�5)      $	��Top=�65   $��28(�5*      $
��Bold"�6&   
�������$��0,40,0,0q�5+       J� Opacity$ 0Q�6*    5,      :� 5-      $ Loaded��6#   .[�5.      �� .��5/      �� .��50   "   W� $ Opacity�62   	 051   2   
 16;   $ 0:0:1.5D�6B   W� 52   "   $, &RenderTransform.(TranslateTransform.Y)�62   	 -2053   2   
 06=   $ 0:0:1.5D�6D   54      55      56      z�58      T� 59       T� Y$	 -20Q�6)   5;      �� 5>      $��Center=�6   $��Center=�66   .+�5@      �� -   5        $��Gestion des Livres��5@      $	��300��5A      $��60��6%   $��18(�61   
����������#FF6F00 � Cursor$
 Hand��5B   .   $��0q�6<   $��0,0,0,30q�5C   1   ��5D      �� 5E       �� 
TargetType" ��6    .�5F      ��  �� Property � z� �� Value 5G   "   �� 5H   &    �� ScaleX$ 1Q�65    �� ScaleY$ 1Q�6@   5J       �� Triggers 5K      P� 5L   "    P� Property �@J�IsMouseOver P� Value$
 True��6A   . �5M   &   ��  � z� 5N   *   �� 5O   .   $	 1.1Q�6=   $	 1.1Q�6J   5Q   '   �� 5R   &    � �� �#FF8F006C   5S   #   5U      ��5W      �� 5X       �� 
TargetType" ��6*   .R�5Y      � .+�5Z   "   �� #��z��6)    �� CornerRadius$ 15��5[   )   �� 5\   "   $��Center=�63   $��Center=�5]   3   5^      5_      5a      �� 5d      -   5        $��Gestion des Réservations��5d      $	��300��5e      $��60��6%   $��18(�61   
����������#4CAF50$
 Hand��5f   .   $��0q�6<   ��5h      �� 5i      " ��6    .�5j      ��  � z� 5k   "   �� 5l   &   $ 1Q�65   $ 1Q�6@   5n       5o      P� 5p   "    �@J�IsMouseOver$
 True��6A   . �5q   &   ��  � z� 5r   *   �� 5s   .   $	 1.1Q�6=   $	 1.1Q�6J   5u   '   �� 5v   &    � �� �#66BB6A6C   5w   #   5y      ��5{      �� 5|      " ��6*   .R�5}      � .+�5~   "   �� #��z��6)   $ 15��5   )   �� 5�   "   $��Center=�63   $��Center=�5�   3   5�      5�      5�      5�      � 5�      $��Stretch=�6   $	��Top=�61   $��40��6I   .+�5�      �� -   5        $��30��5�      $��30��6$   $��Right=�60   $��0,5,10,5q�6L   
������ $��0q�5�   2   $
 Hand��6F    � ToolTip$ Fermer l'application��5�      ��5�      �� 5�      " ��6*   .R�5�      � .+�5�   "   A� $��ellipse��6*   ���#FF3B3B$��30��6H   $��30��6S   �� 5�   "   $	��✕��6,   $��20(�65   $
��Bold"�6C   
�������$��Center=�5�   ,   $��Center=�6I   5�       �� Triggers 5�      P� 5�   "    �@J�IsMouseOver$
 True��6A   . �5�   &   ��   �� 
TargetName$  ellipse��6-    � �� �#FF55556R   5�   #   5�      5�      5�      �� 5�      $/��)Gestion des Livres et des Réservations !��6   $��Center=�5�      $��Bottom=�65   $��14(�5�      ���#CCCCCC$��0,0,0,20q�6;   z�5�      T� 5�      $ 0Q�6)    5�      :� 5�      $ Loaded��6#   .[�5�      �� .��5�      �� .��5�   "   W� $ RenderTransform.Y�62   	 105�   2   
 06<   $ 0:0:1.5D�6C   $ Forever��5�   2   $
 True��6K   5�      5�      5�      5�      5�      5�      5�      
   M S B A M L   `   `   `  ����G  CTableControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:TableControl.StylesTableControl.Styles  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   TabControlStyle  �� 
TargetType �� Property �� Value �� 
TargetType �Name J� SnapsToDevicePixels-   'System.Windows.Input.KeyboardNavigation    TabNavigation � ColumnDefinitions ��Name	 ��Name
 K� IsItemsHost    TabIndex K� ZIndex ��Name    DirectionalNavigation ��Name  TabItemExWithUnderLineStyle J� Opacity �� RelativeSource �� AncestorType �� Triggers ^� 
Conditions �� Binding �� Value �� 
TargetName  
labelStyle  textBoxStyle J� Effect3  -System.Windows.Media.Effects.DropShadowEffect   Color   	Direction   ShadowDepth   Opacity ��Name � 	Resources  Key g� Duration  �� 
TargetName! �� TargetProperty	" W� To# � FocusVisualStyle$ ��Name% �� RadiusX& �� RadiusY' P� Property( P� Value) N� ExitActions* ��Name  HoverOff+ N� EnterActions  HoverOn  SelectedOff  
SelectedOn 	 DisabledForegroundBrush 
 comboBoxStyle, d�Name- �� 	ClickMode. d� 	IsChecked/ �� Path0 �� Mode1 � RowDefinitions2   
BlurRadius3 �� SelectionBoxItem4 �� SelectionBoxItemTemplate5 J� IsHitTestVisible6 �Name7 �� IsDropDownOpen8 � AllowsTransparency9 �� MaxDropDownHeight: � ActualWidth; �� CornerRadius< P� 
SourceName  buttonStyle= �� 
StartPoint> �� EndPoint? � Color@ � OffsetA �� Triggers�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      +local!clr-namespace:TableControl.Styles  5      %%  &	        &	 '    &	 �
    &	 �    '��     7  7  7  7  &	
 X    &	 '    �� 5      "  ��6$   .�5   
   ��  � ��
 �   �6'   �� 5   
    �@��TabStripPlacement$
 Left=�6.   �� 5   
    � �� 5      �� 5	      " ��6"   .R�5
      � $ templateRoot��6   }�.  . $ Local=�6`   ���#13141e 5      �� 5      $ ColumnDefinition0��6/   $��* �6J   �� 5      $ ColumnDefinition1��6/   $��7* �6J   .+�5      �� $	 headerPanel��6#   ���#191b28$��0��6M   
 . $��0,0,10,0q�6p   $��0��6�   $ 1��6�   $ 1��6�   �� 5      $ contentPanel��6!   ���#191b28$��1��6L   $ 	Contained=�6\   $��1��6�   $ 2��6�   $ Local=�6�   ._�5      �� $ PART_SelectedContentHost��6/   $��SelectedContent��6Q   $��0q�6q   # z 6|   5      5      5      5      5      �� 5      "  ��61   .�5   
   ��  � �� �#a0dfff6'   �� 5   
    � �� �#191b286'   �� 5    
    � ��
 �����6(   �� 5!   
    � ��$ 50��6#   �� 5"   
    � ��$ 20(�6%   �� 5#   
    � ��$ 0q�6#   �� 5$   
    � ��$ Stretch=�67   �� 5%   
    � ��$ Stretch=�65   �� 5&   
    � �� 5'      �� 5(      " ��6"   .R�5)      � $ templateRoot��6    . .+�5*      �� $ 
mainBorder��6!   #��z��65   $��1,1,1,1q�6a   #��z��6{   $��0q�6�   ._�5+      �� $ innerBorder��6%   $��1,1,1,0q�6:   $��-1q�6U   $ 0Q�6a   5,      �� 5-      $ contentPresenter��6+   $��Header��6E   |�.  #��z��6�   ��. # z 6+  ��6n   �� *HorizontalContentAlignment+ �� " ����6g  �� *VerticalContentAlignment+ �� " ��5.       5/      ^� 5D       5E      �� 5F   "    6,   �� *
IsSelected+ �� *Self+	 false6q   �� 5G   "    6,   �� *TabStripPlacement+ �� " �� Left6�   .0�5I      �� $ innerBorder��6@    � ��$ 1,1,0,1q�6Y   �� 5J      $ 
mainBorder��6@    � ��$ 0q�6X   �� 5K      $ 
mainBorder��6;    � �� �#191b286S   5L      ^� 5M       5N      �� 5O   "    6,   �� *
IsSelected+ �� *Self+ true6q   �� 5P   "    6,   �� *TabStripPlacement+ �� " �� Left6�   .0�5R      ��  �@K�ZIndex$ 1��6=   �� 5S       � ��$ 
-2,-2,0,-2q�67   �� 5T      $ innerBorder��68    �@J�Opacity$ 1Q�6Q   �� 5U      $ innerBorder��6@    � ��$ 1,1,0,1q�6Y   �� 5V      $ 
mainBorder��6@    � ��$ 1,1,0,1q�6X   �� 5W      $ 
mainBorder��6;    � �� �#29a7e86S   �� 5X      $ 
mainBorder��6<    � �� �#29a7e86T   �� 5Y       � ��
 �   �6;   5Z      5\      5^      5_      �� 5a      "  ��6   .�5b   
   ��  � ��$ 18(�6%   �� 5c   
    � �� �#a0dfff6'   �� 5d   
    � ��$ 0q�6,   �� 5e   
    � ��$ Center=�60   �� 5f   
    � ��$ Center=�6.   5g      �� 5i      "  ��6!   .�5j   
   ��  � ��$ 20(�6%   �� 5k   
    � �� �#a0dfff6'   �� 5l   
    � �� �#a0dfff6(   �� 5m   
    �@��
CaretBrush �#a0dfff6'   �� 5n   
    � ��$
 Left=�67   �� 5o   
    � ��$ Center=�65   �� 5p   
    � �� 5q      �� 5r      .R�5s      � .+�5t      �� $P��Jpack://application:,,,/TableControl;component/Images/TextBoxBackground.png��6    $
��Fill=�6t    5u        5v   "   $ #878892��63   $	 270Q�6C   $ 3Q�6T   $	 0.3Q�6d   5x      �� 5y      $ PART_ContentHost��6'   $��Center=�6A   5z      5{      5}      5~      �� 5�      "  ��6   .�5�   
   ��  �@J�SnapsToDevicePixels . 60   �� 5�   
    � ��$ Stretch=�67   �� 5�   
    � ��$ Center=�65   �� 5�   
    � ��$ 3q�6$   �� 5�   
    � |� .  6&   �� 5�   
    � �� �#a0dfff6'   �� 5�   
    � �� 5�      �� 5�      " ��6"    5�      ���� 5�      HoverOn .��5�      W� $ 00:00:00.1000000D�6.   $  BackgroundGradientOver��6J   $! Opacity�6z   $
" 0.73X�6�   5�      �� 5�      HoverOff .��5�      W� $ 00:00:00.4000000D�6.   $  BackgroundGradientOver��6J   $! Opacity�6y   $" 0X�6�   5�      �� 5�      
SelectedOn .��5�      W� $ 00:00:00.1000000D�6.   $   BackgroundGradientSelected��6J   $! Opacity�6}   $
" 0.84X�6�   5�      �� 5�      SelectedOff .��5�      W� $ 00:00:00.4000000D�6.   $   BackgroundGradientSelected��6J   $! Opacity�6}   $" 0X�6�   5�      5�      .R�5�      �  . ���#161823# 66   Z� .+�5�      �� $$ BackgroundGradientOver��6$   ���#3d4261$��0��6o   
���  ��$% 2��6�   $& 2��6�   $ 0Q�6�   # 6D   Z� 5�      �� 5�      $ $ BackgroundGradientSelected��6$   ���#5d6494$��0��6s   ���	#FFBCBEBF$% 2��6�   $& 2��6�   $ 0Q�6�   # 6H   Z� 6�   �� 5�      $$ BackgroundHighlight��6$   $��1q�6]   $��0��6h   ���#6b7187$% 1��6�   $& 1��6�   # 6A   Z� 6�   �� 5�      $ contentPresenter��6  #��z��6G   #��z��6�   # z 6�   #��z��6  # 6+   Z� 6  5�       5�      P� 5�      ' �@J�IsMouseOver( . ) 5�      �� 5�   "   $* HoverOff_BeginStoryboard��6Y   8��  + 5�      �� 5�   "   $* HoverOn_BeginStoryboard��6X   8�� 5�      P� 5�      ' �@��IsHighlighted( . 6;   P� 5�      ' �@��
IsSelected( . ) 5�      �� 5�   "   $"* SelectedOff_BeginStoryboard1��6\   8�� + 5�      �� 5�   "   $!* SelectedOn_BeginStoryboard1��6[   8�� 5�      P� 5�      ' � {�( .  . �5�      �� # � 	 6;    � ��5�      5�      5�      5�      �� 5�      "  ��6"   .�5�   
   ��  �@J�SnapsToDevicePixels . 60   �� 5�   
    � ��$ 20(�6%   �� 5�   
    � �� �#a0dfff6'   �� 5�   
    � �� �#a0dfff6(   �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      � .+�5�      d� $, ToggleButton��6'   |�.  $- Press=�6�   . 6O   �� $/ IsDropDownOpen�$0 TwoWay=� �� *TemplatedParent+��5�      �� 5�   "   " d�62   .R�5�   &   �  5�   *   �� 5�   .   $	��10* �6?   �� 5�   .   $��2* �6?   �� 5�   .   $
��0.2* �6?   1 5�   *   �� 5�   .   $��* �6<   �� 5�   .   $��8* �6<   �� 5�   .   $��* �6<   .+�5�   *   �� $��0��60   $��0��6=   $��3��6M   $��3��6^   $P��Jpack://application:,,,/TableControl;component/Images/TextBoxBackground.png��6r   $
��Fill=�6�    5�   .     5�   2   $ #878892��6E   $	 270Q�6U   $ 3Q�6f   $	 0.3Q�6v   5�   +   �� 5�   *   $��1��60   $��1��6=   $G��Apack://application:,,,/TableControl;component/Images/CheckBox.png��6M   $��Right=�6�   $��Center=�6�    5�   .     5�   2   $2 10Q�6C   $ Black��6S   $ 3Q�6a   $
 0.85Q�6r   5�   +   5�   '   5�   #   5�      �� 5�      $ ContentSite��6Y   $
��Left=�6+   $��5,3,23,3q�6G   $��Center=�6n   #��z3 6�   #��z4 6�   #��z��6�   5 .  64  � 5�      $6 Popup��6]   #��z7 6    $��Bottom=�6J   |�.  8 . $��Slide=�6�   .��5�      � $ DropDown��6�   #��z9 6#   #��z: 6S   
���   � . .+�5�   "   �� $ DropDownBorder��6)   ���#161823$��0q�6V   $; 1,1,3,3��6j   ._�5�   &   �� $��4,6,4,6q�63    . $
��Auto=�6_   $
��Auto=�6�   ��. .��5�   *   �� 
 . $ 	Contained=�6H   5�   '   5�   #   5�      5�      5�       5�      P� 5�      ' �@��HasItems( .  . �5�      �� $ DropDownBorder��6E    � ��$ 95��6:   6E   5�      P� 5�      ' �@��
IsGrouping( . . �5�      ��  � �� .  6N   5�      P� 5�      $< Popup��6@   ' �@�AllowsTransparency( . . �5�      �� $ DropDownBorder��6G    �@��CornerRadius$ 4��6=   6G   �� 5�      $ DropDownBorder��6G    � ��$ 0,2,0,0q�67   6G   5�      5�      5�      5�      �� 5�      "  ��6    .�5�   
   ��  � �� �#a0dfff6'   �� 5�   
    � �� �#1e202d6'   �� 5�   
    �@J�SnapsToDevicePixels . 60   �� 5�   
    � ��$ Myriad Pro*)�6'   �� 5   
    � ��$ 30(�6%   �� 5  
    � �� 5     �� 5     " ��6"   .R�5     � .+�5     �� $% 35��6$   $& 35��62   ���#a0dfff$��1��6Q    5       5  "   $2 10Q�63   $ Black��6C   $ 5Q�6Q   $	 270Q�6a   $
 0.85Q�6q   ��5	     �� 5
  "   $= 0.5,0&�66   $> 0.5,1&�6I   .��5  &   � $? #39415e��63   $	@ 0.0Q�6C   � 5  &   $? #191c2a��63   $@ 1Q�6C   5  #   5     �� 5     #��z��6+   $��Center=�6^   $��Center=�6{   5     5     5     A 5  
   P� 5     ' � {�( .  . �5     ��  �@J�Opacity$	 0.9Q�6,   5     P� 5     ' �@J�IsMouseOver( . . �5     ��  � �� 5     �� 5     " ��6*   .R�5     � .+�5  "   �� $% 35��6,   $& 35��69   ���#a0dfff$��1��6X    5  &     5   *   $2 10Q�6;   $ Black��6K   $ 5Q�6Y   $	 270Q�6i   $
 0.85Q�6y   ��5"  &   �� 5#  *   $= 0.5,0&�6>   $> 0.5,1&�6Q   .��5$  .   � $? #191c2a��6;   $	@ 0.0Q�6K   � 5%  .   $? #39415e��6;   $	@ 1.0Q�6K   5&  +   5(  #   �� 5)  "   #��z��63   $��Center=�6f   $��Center=�6�   5*     5+     5-     5.     50     52     
   M S B A M L   `   `   `  ���� E  AConfigTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:TableControl.StylesTableControl.Styles  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   TabControlStyle  �� 
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
StartPoint> �� EndPoint? � Color@ � OffsetA �� Triggers�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     +local!clr-namespace:TableControl.Styles  %L  &	        &	     &	 �    &	 x    '�� 	    7  7  7  7  &	
 ]    &	 �    �� "  ��.���  � ��
 �   ���  �@��TabStripPlacement$
 Left=���  � �� �� " ��.R�� $ templateRoot��}�.  . $ Local=����#13141e �� $ ColumnDefinition0��$��* ��� $ ColumnDefinition1��$��7* �.+��� $	 headerPanel�����#191b28$��0��
 . $��0,0,10,0q�$��0��$ 1��$ 1���� $ contentPanel�����#191b28$��1��$ 	Contained=�$��1��$ 2��$ Local=�._��� $ PART_SelectedContentHost��$��SelectedContent��$��0q�# z �� "  ��.���  � �� �#a0dfff��  � �� �#191b28��  � ��
 �������  � ��$ 50����  � ��$ 20(���  � ��$ 0q���  � ��$ Stretch=���  � ��$ Stretch=���  � �� �� " ��.R�� $ templateRoot�� . .+��� $ 
mainBorder��#��z��$��1,1,1,1q�#��z��$��0q�._��� $ innerBorder��$��1,1,1,0q�$��-1q�$ 0Q��� $ contentPresenter��$��Header��|�.  #��z����. # z ���� *HorizontalContentAlignment+ �� " ������ *VerticalContentAlignment+ �� " �� ^�  ��  �� *
IsSelected+ �� *Self+	 false��  �� *TabStripPlacement+ �� " �� Left.0��� $ innerBorder�� � ��$ 1,1,0,1q��� $ 
mainBorder�� � ��$ 0q��� $ 
mainBorder�� � �� �#191b28^�  ��  �� *
IsSelected+ �� *Self+ true��  �� *TabStripPlacement+ �� " �� Left.0���  �@K�ZIndex$ 1����  � ��$ 
-2,-2,0,-2q��� $ innerBorder�� �@J�Opacity$ 1Q��� $ innerBorder�� � ��$ 1,1,0,1q��� $ 
mainBorder�� � ��$ 1,1,0,1q��� $ 
mainBorder�� � �� �#29a7e8�� $ 
mainBorder�� � �� �#29a7e8��  � ��
 �   ��� "  ��.���  � ��$ 18(���  � �� �#a0dfff��  � ��$ 0q���  � ��$ Center=���  � ��$ Center=��� "  ��.���  � ��$ 20(���  � �� �#a0dfff��  � �� �#a0dfff��  �@��
CaretBrush �#a0dfff��  � ��$
 Left=���  � ��$ Center=���  � �� �� .R�� .+��� $N��Hpack://application:,,,/ConfigTool;component/Images/TextBoxBackground.png��$
��Fill=�   $ #878892��$	 270Q�$ 3Q�$	 0.3Q��� $ PART_ContentHost��$��Center=��� "  ��.���  �@J�SnapsToDevicePixels . ��  � ��$ Stretch=���  � ��$ Center=���  � ��$ 3q���  � |� .  ��  � �� �#a0dfff��  � �� �� " �� ���� HoverOn .��W� $ 00:00:00.1000000D�$  BackgroundGradientOver��$! Opacity�$
" 0.73X��� HoverOff .��W� $ 00:00:00.4000000D�$  BackgroundGradientOver��$! Opacity�$" 0X��� 
SelectedOn .��W� $ 00:00:00.1000000D�$   BackgroundGradientSelected��$! Opacity�$
" 0.84X��� SelectedOff .��W� $ 00:00:00.4000000D�$   BackgroundGradientSelected��$! Opacity�$" 0X�.R��  . ���#161823# Z� .+��� $$ BackgroundGradientOver�����#3d4261$��0��
���  ��$% 2��$& 2��$ 0Q�# Z� �� $ $ BackgroundGradientSelected�����#5d6494$��0�����	#FFBCBEBF$% 2��$& 2��$ 0Q�# Z� �� $$ BackgroundHighlight��$��1q�$��0�����#6b7187$% 1��$& 1��# Z� �� $ contentPresenter��#��z��#��z��# z #��z��# Z�  P� ' �@J�IsMouseOver( . ) �� $* HoverOff_BeginStoryboard��8��  + �� $* HoverOn_BeginStoryboard��8�� P� ' �@��IsHighlighted( . P� ' �@��
IsSelected( . ) �� $"* SelectedOff_BeginStoryboard1��8�� + �� $!* SelectedOn_BeginStoryboard1��8�� P� ' � {�( .  . ��� # � 	  � ���� "  ��.���  �@J�SnapsToDevicePixels . ��  � ��$ 20(���  � �� �#a0dfff��  � �� �#a0dfff��  � �� �� " ��.R�� .+�d� $, ToggleButton��|�.  $- Press=�. �� $/ IsDropDownOpen�$0 TwoWay=� �� *TemplatedParent+���� " d�.R��  �� $	��10* ��� $��2* ��� $
��0.2* �1 �� $��* ��� $��8* ��� $��* �.+��� $��0��$��0��$��3��$��3��$N��Hpack://application:,,,/ConfigTool;component/Images/TextBoxBackground.png��$
��Fill=�   $ #878892��$	 270Q�$ 3Q�$	 0.3Q��� $��1��$��1��$E��?pack://application:,,,/ConfigTool;component/Images/CheckBox.png��$��Right=�$��Center=�   $2 10Q�$ Black��$ 3Q�$
 0.85Q��� $ ContentSite��$
��Left=�$��5,3,23,3q�$��Center=�#��z3 #��z4 #��z��5 .  � $6 Popup��#��z7 $��Bottom=�|�.  8 . $��Slide=�.��� $ DropDown��#��z9 #��z: 
���   � . .+��� $ DropDownBorder�����#161823$��0q�$; 1,1,3,3��._��� $��4,6,4,6q� . $
��Auto=�$
��Auto=���. .���� 
 . $ 	Contained=� P� ' �@��HasItems( .  . ��� $ DropDownBorder�� � ��$ 95��P� ' �@��
IsGrouping( . . ���  � �� .  P� $< Popup��' �@�AllowsTransparency( . . ��� $ DropDownBorder�� �@��CornerRadius$ 4���� $ DropDownBorder�� � ��$ 0,2,0,0q��� "  ��.���  � �� �#a0dfff��  � �� �#1e202d��  �@J�SnapsToDevicePixels . ��  � ��$ Myriad Pro*)���  � ��$ 30(���  � �� �� " ��.R�� .+��� $% 35��$& 35�����#a0dfff$��1��   $2 10Q�$ Black��$ 5Q�$	 270Q�$
 0.85Q����� $= 0.5,0&�$> 0.5,1&�.��� $? #39415e��$	@ 0.0Q�� $? #191c2a��$@ 1Q��� #��z��$��Center=�$��Center=�A P� ' � {�( .  . ���  �@J�Opacity$	 0.9Q�P� ' �@J�IsMouseOver( . . ���  � �� �� " ��.R�� .+��� $% 35��$& 35�����#a0dfff$��1��   $2 10Q�$ Black��$ 5Q�$	 270Q�$
 0.85Q����� $= 0.5,0&�$> 0.5,1&�.��� $? #191c2a��$	@ 0.0Q�� $? #39415e��$	@ 1.0Q��� #��z��$��Center=�$��Center=�
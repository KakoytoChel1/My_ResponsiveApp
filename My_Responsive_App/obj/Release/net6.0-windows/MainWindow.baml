   M S B A M L   `   `   `  ���� L  HMy_Responsive_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:My_Responsive_App.ExtraMy_Responsive_App.Extra  I)clr-namespace:My_Responsive_App.ViewModelMy_Responsive_App.ViewModel  "    My_Responsive_App.MainWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     7local%clr-namespace:My_Responsive_App.Extra     8vm)clr-namespace:My_Responsive_App.ViewModel     -     �Name$  window�� � Title$ 
MainWindow��$	��660��$
��1000��$	��400�� � 
ResizeMode$ CanResizeWithGrip=����#1f2023'  !System.Windows.Shell.WindowChrome   WindowChrome    � DataContext /   )My_Responsive_App.ViewModel.MainViewModel  .���  � RowDefinitions �� $��55 ��� .+��    IsHitTestVisibleInChrome$
 True��.+���    titleBut#���   ���� *CloseAppCommand+����  �� ElementName$ window��.���� $��Assets/closeButton.png��$��17���� #���   $��0,0,30,0q����� *MinimizeAppCommand+���� $ window��.���� $��Assets/minimize.png��$��17���� #���   $��0,0,60,0q����� *MaximizeAppCommand+���� $ window��.���� $��Assets/fullScreen.png��$��17���� #���   $��0,0,90,0q����� *PinAppCommand+���� $ window��.���� $��17������  �� 
TargetType" ��.��� 	 �� Property	 � ��
 �� Value$
 Assets/pin.png�� �� Triggers ��  �� Binding �� *
IsPinned+ �� Value True.a��� 	 � ��$
 Assets\unpin.png��� $
��Left=�$��Bottom=�$	��250��$��40�� � ColumnDefinitions �� $
��0.3* ��� $��3* ��� $
��0.3* �.+��� $��0�����#27292d �� RadiusY$ 15�� �� RadiusX$ 15��$��3��$��Center=�$	��230���� $��1��
�������$��Made by KakoytoChel228��$��15(�$��Cooper Black)�$��Center=�$��Center=��� $��Right=�$��12��
���  ��$ 7��$ 7���� $��2��$
��left=�$��12��
���  ��$ 7��$ 7���� $��1������ " ��.��� 	 � ��  Laptop_L#
 [  ��  ��  �� Path$ ActualWidth� �� RelativeSource ��  �� AncestorType
 Window4   .My_Responsive_App.Extra.IsGreaterThanConverter   Instance �� 	Converter# Z  �� ConverterParameter$
 1200�� True.a��� 	 � ��  	Desktop_L#
 [ ��  �� $ ActualWidth� �� 
 Window1   +My_Responsive_App.Extra.IsLessThanConverter   Instance# Z $	 650�� True.a��� 	 � ��  Mobile_L#
 [ 
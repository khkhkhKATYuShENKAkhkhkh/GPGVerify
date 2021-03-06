FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
P
J
GPG Verify
A manually activated Script to verify signed files with GPG (see GPG homepage
http://www.gnupg.org/ )
By Levi Brown <mailto:levi@grokers.net>
Version 1.0.1 September 8th, 2011

This script works in tandem with the 'gpg' command line binary (which should
already be installed and functional) to provide a simple user interface to the
validation of signed files with a detached signature.

The intention is for this script to be accessed from the Script Menu and acts on
the current selection in the Finder.  If only one file is selected the script
will attempt to locate the matching signed file or detached signature file based
on file name.  I suggest adding this script to the Finder Scripts Folder so it
is available from the Finder as needed.  For more information about the Script
Menu please visit: http://www.apple.com/applescript/scriptmenu/

* This script has been tested on Mac OS X 10.4.7 to 10.7.1 under US English and may
contain i18n issues which are not accounted for.

Please feel free to contact me with improvements and feedback.

Release History:
1.0   September 18th, 2006: Internal initial release.
1.0.1 September 8th, 2011: Release to GitHub.

Copyright (c) 2006-2011 Levi Brown.
This work is licensed under the Creative Commons Attribution 3.0 Unported
License. To view a copy of this license, visit
http://creativecommons.org/licenses/by/3.0/ or send a letter to Creative
Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

1. DISCLAIMER OF WARRANTY.  ALL EXPRESS OR IMPLIED CONDITIONS, REPRESENTATIONS
AND WARRANTIES, INCLUDING ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE OR NON-INFRINGEMENT ARE DISCLAIMED, EXCEPT TO THE EXTENT THAT
THESE DISCLAIMERS ARE HELD TO BE LEGALLY INVALID.

2. LIMITATION OF LIABILITY.  TO THE EXTENT NOT PROHIBITED BY LAW, IN NO EVENT
WILL THE AUTHOR OR THE AUTHOR'S LICENSORS BE LIABLE FOR ANY LOST REVENUE, PROFIT
OR DATA, OR FOR SPECIAL, INDIRECT, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE
DAMAGES, HOWEVER CAUSED REGARDLESS OF THE THEORY OF LIABILITY, ARISING OUT OF OR
RELATED TO THE USE OF OR INABILITY TO USE SOFTWARE, EVEN IF THE AUTHOR HAS BEEN
ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.  In no event will the author's
liability to you, whether in contract, tort (including negligence), or
otherwise, exceed the amount paid by you for Software under this Agreement. The
foregoing limitations will apply even if the above stated warranty fails of its
essential purpose. Some states do not allow the exclusion of incidental or
consequential damages, so some of the terms above may not be applicable to you.
     � 	 	� 
 G P G   V e r i f y 
 A   m a n u a l l y   a c t i v a t e d   S c r i p t   t o   v e r i f y   s i g n e d   f i l e s   w i t h   G P G   ( s e e   G P G   h o m e p a g e 
 h t t p : / / w w w . g n u p g . o r g /   ) 
 B y   L e v i   B r o w n   < m a i l t o : l e v i @ g r o k e r s . n e t > 
 V e r s i o n   1 . 0 . 1   S e p t e m b e r   8 t h ,   2 0 1 1 
 
 T h i s   s c r i p t   w o r k s   i n   t a n d e m   w i t h   t h e   ' g p g '   c o m m a n d   l i n e   b i n a r y   ( w h i c h   s h o u l d 
 a l r e a d y   b e   i n s t a l l e d   a n d   f u n c t i o n a l )   t o   p r o v i d e   a   s i m p l e   u s e r   i n t e r f a c e   t o   t h e 
 v a l i d a t i o n   o f   s i g n e d   f i l e s   w i t h   a   d e t a c h e d   s i g n a t u r e . 
 
 T h e   i n t e n t i o n   i s   f o r   t h i s   s c r i p t   t o   b e   a c c e s s e d   f r o m   t h e   S c r i p t   M e n u   a n d   a c t s   o n 
 t h e   c u r r e n t   s e l e c t i o n   i n   t h e   F i n d e r .     I f   o n l y   o n e   f i l e   i s   s e l e c t e d   t h e   s c r i p t 
 w i l l   a t t e m p t   t o   l o c a t e   t h e   m a t c h i n g   s i g n e d   f i l e   o r   d e t a c h e d   s i g n a t u r e   f i l e   b a s e d 
 o n   f i l e   n a m e .     I   s u g g e s t   a d d i n g   t h i s   s c r i p t   t o   t h e   F i n d e r   S c r i p t s   F o l d e r   s o   i t 
 i s   a v a i l a b l e   f r o m   t h e   F i n d e r   a s   n e e d e d .     F o r   m o r e   i n f o r m a t i o n   a b o u t   t h e   S c r i p t 
 M e n u   p l e a s e   v i s i t :   h t t p : / / w w w . a p p l e . c o m / a p p l e s c r i p t / s c r i p t m e n u / 
 
 *   T h i s   s c r i p t   h a s   b e e n   t e s t e d   o n   M a c   O S   X   1 0 . 4 . 7   t o   1 0 . 7 . 1   u n d e r   U S   E n g l i s h   a n d   m a y 
 c o n t a i n   i 1 8 n   i s s u e s   w h i c h   a r e   n o t   a c c o u n t e d   f o r . 
 
 P l e a s e   f e e l   f r e e   t o   c o n t a c t   m e   w i t h   i m p r o v e m e n t s   a n d   f e e d b a c k . 
 
 R e l e a s e   H i s t o r y : 
 1 . 0       S e p t e m b e r   1 8 t h ,   2 0 0 6 :   I n t e r n a l   i n i t i a l   r e l e a s e . 
 1 . 0 . 1   S e p t e m b e r   8 t h ,   2 0 1 1 :   R e l e a s e   t o   G i t H u b . 
 
 C o p y r i g h t   ( c )   2 0 0 6 - 2 0 1 1   L e v i   B r o w n . 
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n   3 . 0   U n p o r t e d 
 L i c e n s e .   T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t 
 h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e 
 C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A . 
 
 1 .   D I S C L A I M E R   O F   W A R R A N T Y .     A L L   E X P R E S S   O R   I M P L I E D   C O N D I T I O N S ,   R E P R E S E N T A T I O N S 
 A N D   W A R R A N T I E S ,   I N C L U D I N G   A N Y   I M P L I E D   W A R R A N T Y   O F   M E R C H A N T A B I L I T Y ,   F I T N E S S   F O R   A 
 P A R T I C U L A R   P U R P O S E   O R   N O N - I N F R I N G E M E N T   A R E   D I S C L A I M E D ,   E X C E P T   T O   T H E   E X T E N T   T H A T 
 T H E S E   D I S C L A I M E R S   A R E   H E L D   T O   B E   L E G A L L Y   I N V A L I D . 
 
 2 .   L I M I T A T I O N   O F   L I A B I L I T Y .     T O   T H E   E X T E N T   N O T   P R O H I B I T E D   B Y   L A W ,   I N   N O   E V E N T 
 W I L L   T H E   A U T H O R   O R   T H E   A U T H O R ' S   L I C E N S O R S   B E   L I A B L E   F O R   A N Y   L O S T   R E V E N U E ,   P R O F I T 
 O R   D A T A ,   O R   F O R   S P E C I A L ,   I N D I R E C T ,   C O N S E Q U E N T I A L ,   I N C I D E N T A L   O R   P U N I T I V E 
 D A M A G E S ,   H O W E V E R   C A U S E D   R E G A R D L E S S   O F   T H E   T H E O R Y   O F   L I A B I L I T Y ,   A R I S I N G   O U T   O F   O R 
 R E L A T E D   T O   T H E   U S E   O F   O R   I N A B I L I T Y   T O   U S E   S O F T W A R E ,   E V E N   I F   T H E   A U T H O R   H A S   B E E N 
 A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E S .     I n   n o   e v e n t   w i l l   t h e   a u t h o r ' s 
 l i a b i l i t y   t o   y o u ,   w h e t h e r   i n   c o n t r a c t ,   t o r t   ( i n c l u d i n g   n e g l i g e n c e ) ,   o r 
 o t h e r w i s e ,   e x c e e d   t h e   a m o u n t   p a i d   b y   y o u   f o r   S o f t w a r e   u n d e r   t h i s   A g r e e m e n t .   T h e 
 f o r e g o i n g   l i m i t a t i o n s   w i l l   a p p l y   e v e n   i f   t h e   a b o v e   s t a t e d   w a r r a n t y   f a i l s   o f   i t s 
 e s s e n t i a l   p u r p o s e .   S o m e   s t a t e s   d o   n o t   a l l o w   t h e   e x c l u s i o n   o f   i n c i d e n t a l   o r 
 c o n s e q u e n t i a l   d a m a g e s ,   s o   s o m e   o f   t h e   t e r m s   a b o v e   m a y   n o t   b e   a p p l i c a b l e   t o   y o u . 
   
  
 l     ��������  ��  ��        j     �� �� 0 _sig_file_extensions    J            m        �    . a s c . t x t      m       �    . t x t      m       �    . a s c   ��  m       �    . s i g��         l     ��������  ��  ��      ! " ! i     # $ # I     ������
�� .aevtoappnull  �   � ****��  ��   $ O    a % & % k   ` ' '  ( ) ( r    	 * + * 1    ��
�� 
sele + o      ���� 0 _sel   )  , - , r   
  . / . n   
  0 1 0 m    ��
�� 
nmbr 1 n   
  2 3 2 2   ��
�� 
cobj 3 o   
 ���� 0 _sel   / o      ���� 0 cnt   -  4 5 4 l   ��������  ��  ��   5  6�� 6 Z   ` 7 8 9 : 7 =    ; < ; o    ���� 0 cnt   < m    ����   8 k    + = =  > ? > I   ������
�� .sysobeepnull��� ��� long��  ��   ?  @�� @ I   +�� A B
�� .sysodlogaskr        TEXT A m     C C � D D � P l e a s e   s e l e c t   t h e   t a r g e t   f i l e   a n d / o r   t h e   c o r r e s p o n d i n g   s i g n a t u r e   f i l e . B �� E F
�� 
btns E J     # G G  H�� H m     ! I I � J J  C a n c e l��   F �� K L
�� 
dflt K m   $ % M M � N N  C a n c e l L �� O��
�� 
disp O m   & '����  ��  ��   9  P Q P ?   . 1 R S R o   . /���� 0 cnt   S m   / 0����  Q  T�� T k   4 K U U  V W V I  4 9������
�� .sysobeepnull��� ��� long��  ��   W  X�� X I  : K�� Y Z
�� .sysodlogaskr        TEXT Y m   : ; [ [ � \ \ � P l e a s e   s e l e c t   o n l y   t h e   t a r g e t   f i l e   a n d / o r   t h e   c o r r e s p o n d i n g   s i g n a t u r e   f i l e . Z �� ] ^
�� 
btns ] J   < A _ _  `�� ` m   < ? a a � b b  C a n c e l��   ^ �� c d
�� 
dflt c m   B E e e � f f  C a n c e l d �� g��
�� 
disp g m   F G����  ��  ��  ��   : k   N` h h  i j i l  N N��������  ��  ��   j  k l k Z   N � m n�� o m =  N Q p q p o   N O���� 0 cnt   q m   O P����  n k   T � r r  s t s r   T \ u v u n   T X w x w 4   U X�� y
�� 
cobj y m   V W����  x o   T U���� 0 _sel   v o      ���� 0 anitem anItem t  z { z r   ] i | } | n  ] e ~  ~ I   ^ e�� ����� 0 findsigfile findSigFile �  ��� � o   ^ a���� 0 anitem anItem��  ��     f   ] ^ } o      ���� 0 _sigfile _sigFile {  ��� � Z   j � � ��� � � =  j q � � � o   j m���� 0 anitem anItem � o   m p���� 0 _sigfile _sigFile � r   t � � � � n  t | � � � I   u |�� �����  0 findtargetfile findTargetFile �  ��� � o   u x���� 0 anitem anItem��  ��   �  f   t u � o      ���� 0 _targetfile _targetFile��   � r   � � � � � o   � ����� 0 anitem anItem � o      ���� 0 _targetfile _targetFile��  ��   o k   � � � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 _sel   � o      ���� 0 anitem anItem �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 findsigfile findSigFile �  ��� � o   � ����� 0 anitem anItem��  ��   �  f   � � � o      ���� 0 _sigfile _sigFile �  ��� � Z   � � � ��� � � =  � � � � � o   � ����� 0 anitem anItem � o   � ����� 0 _sigfile _sigFile � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 _sel   � o      ���� 0 _targetfile _targetFile��   � r   � � � � � o   � ����� 0 anitem anItem � o      ���� 0 _targetfile _targetFile��   l  � � � l  � ���������  ��  ��   �  ��� � Z   �` � ��� � � G   � � � � � =  � � � � � o   � ����� 0 _targetfile _targetFile � m   � � � � � � �   � =  � � � � � o   � ����� 0 _sigfile _sigFile � m   � � � � � � �   � k   � � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � h C o u l d   n o t   d e t e r m i n e   s i g n a t u r e   f i l e   f r o m   t a r g e t   f i l e . � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C a n c e l��   � �� � �
�� 
dflt � m   � � � � � � �  C a n c e l � �� ���
�� 
disp � m   � �����  ��  ��  ��   � k   �` � �  � � � r   � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � c   � � � � � o   � ����� 0 _targetfile _targetFile � m   � ���
�� 
alis��  ��   � o      ���� 0 _targetfile _targetFile �  � � � r   � � � n   � � � 1  ��
�� 
psxp � l  ����� � c   � � � o  ���� 0 _sigfile _sigFile � m  
��
�� 
alis��  ��   � o      ���� 0 _sigfile _sigFile �  ��� � Q  ` � � � � k  ; � �  � � � r  2 � � � I .�� ���
�� .sysoexecTEXT���     TEXT � b  * � � � b  & � � � b  " � � � b   � � � m   � � � � �f / u s r / l o c a l / b i n / g p g   - - n o - g r e e t i n g   - - q u i e t   - - k e y s e r v e r   w w w k e y s . p g p . n e t   - - k e y s e r v e r - o p t i o n s   a u t o - k e y - r e t r i e v e , i n c l u d e - s u b k e y s , h o n o r - h t t p - p r o x y   - - v e r i f y - o p t i o n s   s h o w - p h o t o s   - - v e r i f y   " � o  �� 0 _sigfile _sigFile � m  ! � � � � �  "   " � o  "%�~�~ 0 _targetfile _targetFile � m  &) � � � � �  "   2 > & 1��   � o      �}�} 0 res   �  ��| � n 3; � � � I  4;�{ ��z�{ 0 parsegpgres parseGPGRes �  ��y � o  47�x�x 0 res  �y  �z   �  f  34�|   � R      �w 
�w .ascrerr ****      � ****  o      �v�v 0 errtext errText �u�t
�u 
errn o      �s�s 0 errnum errNum�t   � I C`�r
�r .sysodisAaleR        TEXT m  CF � L E r r o r :   G P G   S i g n a t u r e   V a l i d a t i o n   F a i l e d �q
�q 
mesS o  IJ�p�p 0 errtext errText �o	

�o 
as A	 m  MP�n
�n EAlTcriT
 �m
�m 
btns J  QV �l m  QT �  O K�l   �k�j
�k 
dflt m  WZ �  O K�j  ��  ��  ��   & m     �                                                                                  MACS  alis    t  Macintosh HD               �n�NH+     G
Finder.app                                                       �z�(XW        ����  	                CoreServices    �n��      �(��       G   :   9  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   "  l     �i�h�g�i  �h  �g    i     I      �f�e�f 0 parsegpgres parseGPGRes �d o      �c�c 0 res  �d  �e   k    z  r      !  m     "" �##  ! o      �b�b 0 _message   $%$ r    &'& J    �a�a  ' o      �`�` 
0 _lines  % ()( r   	 *+* n  	 ,-, 1   
 �_
�_ 
txdl- 1   	 
�^
�^ 
ascr+ o      �]�] 0 _oldatid _oldATID) ./. r    010 I   �\2�[
�\ .sysontocTEXT       shor2 m    �Z�Z �[  1 n     343 1    �Y
�Y 
txdl4 1    �X
�X 
ascr/ 565 Q    37897 r    !:;: n    <=< 2   �W
�W 
citm= o    �V�V 0 res  ; o      �U�U 
0 _lines  8 R      �T>�S
�T .ascrerr ****      � ****> o      �R�R 0 _err  �S  9 O  ) 3?@? I  - 2�QA�P
�Q .sysodlogaskr        TEXTA o   - .�O�O 0 _err  �P  @ m   ) *BB�                                                                                  MACS  alis    t  Macintosh HD               �n�NH+     G
Finder.app                                                       �z�(XW        ����  	                CoreServices    �n��      �(��       G   :   9  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  6 CDC r   4 9EFE o   4 5�N�N 0 _oldatid _oldATIDF n     GHG 1   6 8�M
�M 
txdlH 1   5 6�L
�L 
ascrD IJI l  : :�K�J�I�K  �J  �I  J KLK Z   :QMN�HOM =  : >PQP o   : ;�G�G 
0 _lines  Q J   ; =�F�F  N k   A ]RR STS I  A F�E�D�C
�E .sysobeepnull��� ��� long�D  �C  T U�BU O  G ]VWV I  K \�AXY
�A .sysodlogaskr        TEXTX m   K LZZ �[[ l C o u l d   n o t   d e t e r m i n e   s i g n a t u r e   s t a t u s   f r o m   g p g   r e s u l t s .Y �@\]
�@ 
btns\ J   M P^^ _�?_ m   M N`` �aa  C a n c e l�?  ] �>bc
�> 
dfltb m   Q Rdd �ee  C a n c e lc �=f�<
�= 
dispf m   U V�;�;  �<  W m   G Hgg�                                                                                  MACS  alis    t  Macintosh HD               �n�NH+     G
Finder.app                                                       �z�(XW        ����  	                CoreServices    �n��      �(��       G   :   9  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �B  �H  O k   `Qhh iji r   ` kklk n   ` imnm m   e i�:
�: 
nmbrn n  ` eopo 2  a e�9
�9 
cobjp o   ` a�8�8 
0 _lines  l o      �7�7 0 num  j q�6q Y   lQr�5st�4r k   vLuu vwv r   v ~xyx n   v |z{z 4   w |�3|
�3 
cobj| o   z {�2�2 0 indx  { o   v w�1�1 
0 _lines  y o      �0�0 	0 _line  w }~} l   �/��/   &   Look for 'Good Signature' lines   � ��� @   L o o k   f o r   ' G o o d   S i g n a t u r e '   l i n e s~ ��.� Z   L����-� C    ���� o    ��,�, 	0 _line  � m   � ��� ��� 0 g p g :   G o o d   s i g n a t u r e   f r o m� k   � ��� ��� r   � ���� n  � ���� I   � ��+��*�+ 0 removeprefix removePrefix� ��� o   � ��)�) 	0 _line  � ��(� m   � ��� ��� 
 g p g :  �(  �*  �  f   � �� o      �'�' 	0 _line  � ��� r   � ���� b   � ���� b   � ���� o   � ��&�& 0 _message  � o   � ��%�% 	0 _line  � o   � ��$
�$ 
ret � o      �#�# 0 _message  � ��� l  � ��"���"  � < 6 get all 'aka' lines following a 'Good signature' line   � ��� l   g e t   a l l   ' a k a '   l i n e s   f o l l o w i n g   a   ' G o o d   s i g n a t u r e '   l i n e� ��!� Y   � ��� ���� k   � ��� ��� r   � ���� n   � ���� 4   � ���
� 
cobj� o   � ��� 0 jndx  � o   � ��� 
0 _lines  � o      �� 	0 _next  � ��� Z   � ������ C   � ���� o   � ��� 	0 _next  � m   � ��� ��� 0 g p g :                                   a k a� k   � ��� ��� r   � ���� o   � ��� 0 jndx  � o      �� 0 indx  � ��� r   � ���� n  � ���� I   � ����� 0 removeprefix removePrefix� ��� o   � ��� 	0 _next  � ��� m   � ��� ��� * g p g :                                  �  �  �  f   � �� o      �� 	0 _next  � ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��� 0 _message  � 1   � ��
� 
tab � o   � ��� 	0 _next  � o   � ��
� 
ret � o      �� 0 _message  �  �  �  S   � ��  �  0 jndx  � l  � ���
�	� [   � ���� o   � ��� 0 indx  � m   � ��� �
  �	  � o   � ��� 0 num  �  �!  � ��� C   � ���� o   � ��� 	0 _line  � m   � ��� ���  g p g :   W A R N I N G :  � ��� k   �H�� ��� r   � ���� n  � ���� I   � ����� 0 removeprefix removePrefix� ��� o   � ��� 	0 _line  � �� � m   � ��� ��� 
 g p g :  �   �  �  f   � �� o      ���� 	0 _line  � ��� r   � ��� b   � ���� b   � ���� o   � ����� 0 _message  � o   � ����� 	0 _line  � o   � ���
�� 
ret � o      ���� 0 _message  � ��� l ������  � < 6 get all 'aka' lines following a 'Good signature' line   � ��� l   g e t   a l l   ' a k a '   l i n e s   f o l l o w i n g   a   ' G o o d   s i g n a t u r e '   l i n e� ��� Y  @�������� k  ;�� ��� r  ��� n     4  ��
�� 
cobj o  ���� 0 jndx   o  ���� 
0 _lines  � o      ���� 	0 _next  � �� Z  ;�� C   o  ���� 	0 _next   m  		 �

  g p g :                     k  7  r  ! o  ���� 0 jndx   o      ���� 0 indx    r  "- n "+ I  #+������ 0 removeprefix removePrefix  o  #$���� 	0 _next   �� m  $' �  g p g :                    ��  ��    f  "# o      ���� 	0 _next   �� r  .7 b  .5  b  .1!"! o  ./���� 0 _message  " o  /0���� 	0 _next    o  14��
�� 
ret  o      ���� 0 _message  ��  ��    S  :;��  �� 0 jndx  � l #����# [  $%$ o  ���� 0 indx  % m  ���� ��  ��  � o  ���� 0 num  ��  � &��& r  AH'(' b  AF)*) o  AB���� 0 _message  * o  BE��
�� 
ret ( o      ���� 0 _message  ��  �  �-  �.  �5 0 indx  s m   o p���� t o   p q���� 0 num  �4  �6  L +��+ O Rz,-, r  Vy./. n  Vw010 1  sw��
�� 
bhit1 l Vs2����2 I Vs��34
�� .sysodisAaleR        TEXT3 m  VY55 �66 0 G P G   S i g n a t u r e   V a l i d a t i o n4 ��78
�� 
mesS7 o  \]���� 0 _message  8 ��9:
�� 
as A9 m  `c��
�� EAlTinfA: ��;<
�� 
btns; J  di== >��> m  dg?? �@@  O K��  < ��A��
�� 
dfltA m  jmBB �CC  O K��  ��  ��  / o      ���� 0 	retbutton 	retButton- m  RSDD�                                                                                  MACS  alis    t  Macintosh HD               �n�NH+     G
Finder.app                                                       �z�(XW        ����  	                CoreServices    �n��      �(��       G   :   9  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��   EFE l     ��������  ��  ��  F GHG i    IJI I      ��K���� 0 findsigfile findSigFileK L��L o      ���� 0 analias anAlias��  ��  J k     ~MM NON r     PQP n     RSR 1    ��
�� 
pnamS o     ���� 0 analias anAliasQ o      ���� 	0 _name  O TUT Y    5V��WX��V k    0YY Z[Z r    #\]\ n    !^_^ 4    !��`
�� 
cobj` o     ���� 0 indx  _ o    ���� 0 _sig_file_extensions  ] o      ���� 0 _ext  [ a��a Z   $ 0bc����b D   $ 'ded o   $ %���� 	0 _name  e o   % &���� 0 _ext  c L   * ,ff o   * +���� 0 analias anAlias��  ��  ��  �� 0 indx  W m   	 
���� X n   
 ghg m    ��
�� 
nmbrh n  
 iji 2   ��
�� 
cobjj o   
 ���� 0 _sig_file_extensions  ��  U klk r   6 >mnm n  6 <opo I   7 <��q���� 0 getparentpath getParentPathq r��r o   7 8���� 0 analias anAlias��  ��  p  f   6 7n o      ���� 0 _pwd  l sts Y   ? {u��vw��u k   R vxx yzy r   R \{|{ n   R Z}~} 4   W Z��
�� 
cobj o   X Y���� 0 indx  ~ o   R W���� 0 _sig_file_extensions  | o      ���� 0 _ext  z ��� r   ] d��� b   ] b��� b   ] `��� o   ] ^���� 0 _pwd  � o   ^ _���� 	0 _name  � o   ` a���� 0 _ext  � o      ���� 0 _tmppath _tmpPath� ���� Z   e v������� n  e k��� I   f k������� 0 isthere isThere� ���� o   f g���� 0 _tmppath _tmpPath��  ��  �  f   e f� L   n r�� l  n q������ c   n q��� o   n o���� 0 _tmppath _tmpPath� m   o p��
�� 
alis��  ��  ��  ��  ��  �� 0 indx  v m   B C���� w n   C M��� m   J L��
�� 
nmbr� n  C J��� 2  H J��
�� 
cobj� o   C H���� 0 _sig_file_extensions  ��  t ���� L   | ~�� m   | }�� ���  ��  H ��� l     ��������  ��  ��  � ��� i    ��� I      �������  0 findtargetfile findTargetFile� ���� o      ���� 0 analias anAlias��  ��  � k     h�� ��� r     ��� n     ��� 1    ��
�� 
pnam� o     ���� 0 analias anAlias� o      ���� 	0 _name  � ��� r    	��� m    �� ���  � o      ���� 0 sigext sigExt� ��� Y   
 <�������� k    7�� ��� r    '��� n    %��� 4   " %���
�� 
cobj� o   # $���� 0 indx  � o    "���� 0 _sig_file_extensions  � o      ���� 0 _ext  � ���� Z   ( 7������ D   ( +��� o   ( )�~�~ 	0 _name  � o   ) *�}�} 0 _ext  � k   . 3�� ��� r   . 1��� o   . /�|�| 0 _ext  � o      �{�{ 0 sigext sigExt� ��z�  S   2 3�z  ��  �  ��  �� 0 indx  � m    �y�y � n    ��� m    �x
�x 
nmbr� n   ��� 2   �w
�w 
cobj� o    �v�v 0 _sig_file_extensions  ��  � ��� l  = =�u�t�s�u  �t  �s  � ��� Z   = e���r�� l  = @��q�p� =  = @��� o   = >�o�o 0 sigext sigExt� m   > ?�� ���  �q  �p  � L   C E�� o   C D�n�n 0 analais anAlais�r  � k   H e�� ��� r   H S��� n  H Q��� I   I Q�m��l�m "0 removeextension removeExtension� ��� c   I L��� o   I J�k�k 0 analias anAlias� m   J K�j
�j 
TEXT� ��i� o   L M�h�h 0 sigext sigExt�i  �l  �  f   H I� o      �g�g 0 _tmppath _tmpPath� ��f� Z   T e���e�d� n  T Z��� I   U Z�c��b�c 0 isthere isThere� ��a� o   U V�`�` 0 _tmppath _tmpPath�a  �b  �  f   T U� L   ] a�� l  ] `��_�^� c   ] `��� o   ] ^�]�] 0 _tmppath _tmpPath� m   ^ _�\
�\ 
alis�_  �^  �e  �d  �f  � ��[� L   f h�� m   f g�� ���  �[  � ��� l     �Z�Y�X�Z  �Y  �X  � ��� i    ��� I      �W��V�W 0 removeprefix removePrefix� ��� o      �U�U 0 _str  � ��T� o      �S�S 0 _pre  �T  �V  � k     ��    r      n      2   �R
�R 
cha  o     �Q�Q 0 _str   o      �P�P 0 strchars strChars  r    	 n    

 m   	 �O
�O 
nmbr n    	 2   	�N
�N 
cha  o    �M�M 0 _pre  	 o      �L�L 0 prelen preLen �K L     c     l   �J�I n     7   �H
�H 
cobj l   �G�F [     o    �E�E 0 prelen preLen m    �D�D �G  �F    ;     o    �C�C 0 strchars strChars�J  �I   m    �B
�B 
TEXT�K  �  l     �A�@�?�A  �@  �?    i     I      �> �=�> "0 removeextension removeExtension  !"! o      �<�< 0 _str  " #�;# o      �:�: 0 _ext  �;  �=   k      $$ %&% r     '(' n     )*) 2   �9
�9 
cha * o     �8�8 0 _str  ( o      �7�7 0 strchars strChars& +,+ r    -.- n    /0/ m   	 �6
�6 
nmbr0 n    	121 2   	�5
�5 
cha 2 o    �4�4 0 _ext  . o      �3�3 0 extlen extLen, 3�23 L     44 c    565 l   7�1�07 n    898 7   �/:;
�/ 
cobj: m    �.�. ; l   <�-�,< \    =>= l   ?�+�*? n    @A@ m    �)
�) 
nmbrA o    �(�( 0 strchars strChars�+  �*  > o    �'�' 0 extlen extLen�-  �,  9 o    �&�& 0 strchars strChars�1  �0  6 m    �%
�% 
TEXT�2   BCB l     �$�#�"�$  �#  �"  C DED i     #FGF I      �!H� �! 0 getparentpath getParentPathH I�I o      �� 0 analias anAlias�  �   G O     JKJ k    LL MNM r    	OPO n    QRQ m    �
� 
ctnrR o    �� 0 analias anAliasP o      �� 	0 _cont  N S�S L   
 TT c   
 UVU o   
 �� 	0 _cont  V m    �
� 
TEXT�  K m     WW�                                                                                  MACS  alis    t  Macintosh HD               �n�NH+     G
Finder.app                                                       �z�(XW        ����  	                CoreServices    �n��      �(��       G   :   9  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  E XYX l     ����  �  �  Y Z[Z i   $ '\]\ I      �^�� 0 isthere isThere^ _�_ o      �� 0 strfilepath strFilePath�  �  ] k     "`` aba Q     cdec c    fgf o    �� 0 strfilepath strFilePathg m    �
� 
alisd R      �hi
� .ascrerr ****      � ****h o      �� 0 errtext errTexti �j�
� 
errnj o      �
�
 0 errnum errNum�  e Z    kl�	mk =   non o    �� 0 errnum errNumo m    ����l L    pp m    �
� boovfals�	  m R    ��q
� .ascrerr ****      � ****�  q �r�
� 
errnr o    �� 0 errnum errNum�  b s� s L     "tt m     !��
�� boovtrue�   [ u��u l     ��������  ��  ��  ��       ��vwxyz{|}~��  v 	�������������������� 0 _sig_file_extensions  
�� .aevtoappnull  �   � ****�� 0 parsegpgres parseGPGRes�� 0 findsigfile findSigFile��  0 findtargetfile findTargetFile�� 0 removeprefix removePrefix�� "0 removeextension removeExtension�� 0 getparentpath getParentPath�� 0 isthere isTherew ����� �      x �� $��������
�� .aevtoappnull  �   � ****��  ��  � ������ 0 errtext errText�� 0 errnum errNum� /������������ C�� I�� M������ [ a e���������� � ��� � � ����� � � ��������������������
�� 
sele�� 0 _sel  
�� 
cobj
�� 
nmbr�� 0 cnt  
�� .sysobeepnull��� ��� long
�� 
btns
�� 
dflt
�� 
disp�� 
�� .sysodlogaskr        TEXT�� 0 anitem anItem�� 0 findsigfile findSigFile�� 0 _sigfile _sigFile��  0 findtargetfile findTargetFile�� 0 _targetfile _targetFile
�� 
bool
�� 
alis
�� 
psxp
�� .sysoexecTEXT���     TEXT�� 0 res  �� 0 parsegpgres parseGPGRes�� 0 errtext errText� ������
�� 
errn�� 0 errnum errNum��  
�� 
mesS
�� 
as A
�� EAlTcriT�� 
�� .sysodisAaleR        TEXT��b�^*�,E�O��-�,E�O�j  *j O���kv���j� Y4�l *j O��a kv�a �j� Y�k  ;��k/E` O)_ k+ E` O_ _   )_ k+ E` Y 	_ E` Y 4��k/E` O)_ k+ E` O_ _   ��l/E` Y 	_ E` O_ a  
 _ a  a & *j Oa �a kv�a �j� Y n_ a &a ,E` O_ a &a ,E` O )a _ %a  %_ %a !%j "E` #O)_ #k+ $W $X % &a 'a (�a )a *�a +kv�a ,a - .Uy ������������ 0 parsegpgres parseGPGRes�� ����� �  ���� 0 res  ��  � ������������������������ 0 res  �� 0 _message  �� 
0 _lines  �� 0 _oldatid _oldATID�� 0 _err  �� 0 num  �� 0 indx  �� 	0 _line  �� 0 jndx  �� 	0 _next  �� 0 	retbutton 	retButton� ("��������������B����Z��`��d��������������������	5������?B������
�� 
ascr
�� 
txdl�� 
�� .sysontocTEXT       shor
�� 
citm�� 0 _err  ��  
�� .sysodlogaskr        TEXT
�� .sysobeepnull��� ��� long
�� 
btns
�� 
dflt
�� 
disp�� 
�� 
cobj
�� 
nmbr�� 0 removeprefix removePrefix
�� 
ret 
�� 
tab 
�� 
mesS
�� 
as A
�� EAlTinfA�� 
�� .sysodisAaleR        TEXT
�� 
bhit��{�E�OjvE�O��,E�O�j ��,FO 
��-E�W X  � �j 	UO���,FO�jv  !*j 
O� ���kv��a ja  	UY �a -a ,E�O �k�kh �a �/E�O�a  ^)�a l+ E�O��%_ %E�O B�k�kh �a �/E�O�a  "�E�O)�a l+ E�O�_ %�%_ %E�Y [OY��Y k�a  b)�a l+ E�O��%_ %E�O >�k�kh �a �/E�O�a  �E�O)�a l+ E�O��%_ %E�Y [OY��O�_ %E�Y h[OY�$O� %a a  �a !a "�a #kv�a $a % &a ',E�Uz ��J���������� 0 findsigfile findSigFile�� ����� �  ���� 0 analias anAlias��  � �������������� 0 analias anAlias�� 	0 _name  �� 0 indx  �� 0 _ext  �� 0 _pwd  �� 0 _tmppath _tmpPath� �������������
�� 
pnam
�� 
cobj
�� 
nmbr�� 0 getparentpath getParentPath�� 0 isthere isThere
�� 
alis�� ��,E�O .kb   �-�,Ekh b   �/E�O�� �Y h[OY��O)�k+ E�O ;kb   �-�,Ekh b   �/E�O��%�%E�O)�k+  	��&Y h[OY��O�{ �������������  0 findtargetfile findTargetFile�� ����� �  ���� 0 analias anAlias��  � ���������������� 0 analias anAlias�� 	0 _name  �� 0 sigext sigExt�� 0 indx  �� 0 _ext  �� 0 analais anAlais�� 0 _tmppath _tmpPath� 
����������~�}�|�
�� 
pnam
�� 
cobj
�� 
nmbr
� 
TEXT�~ "0 removeextension removeExtension�} 0 isthere isThere
�| 
alis�� i��,E�O�E�O 1kb   �-�,Ekh b   �/E�O�� 
�E�OY h[OY��O��  �Y )��&�l+ E�O)�k+  	��&Y hO�| �{��z�y���x�{ 0 removeprefix removePrefix�z �w��w �  �v�u�v 0 _str  �u 0 _pre  �y  � �t�s�r�q�t 0 _str  �s 0 _pre  �r 0 strchars strChars�q 0 prelen preLen� �p�o�n�m
�p 
cha 
�o 
nmbr
�n 
cobj
�m 
TEXT�x ��-E�O��-�,E�O�[�\[Z�k\62�&} �l�k�j���i�l "0 removeextension removeExtension�k �h��h �  �g�f�g 0 _str  �f 0 _ext  �j  � �e�d�c�b�e 0 _str  �d 0 _ext  �c 0 strchars strChars�b 0 extlen extLen� �a�`�_�^
�a 
cha 
�` 
nmbr
�_ 
cobj
�^ 
TEXT�i !��-E�O��-�,E�O�[�\[Zk\Z��,�2�&~ �]G�\�[���Z�] 0 getparentpath getParentPath�\ �Y��Y �  �X�X 0 analias anAlias�[  � �W�V�W 0 analias anAlias�V 	0 _cont  � W�U�T
�U 
ctnr
�T 
TEXT�Z � ��,E�O��&U �S]�R�Q���P�S 0 isthere isThere�R �O��O �  �N�N 0 strfilepath strFilePath�Q  � �M�L�K�M 0 strfilepath strFilePath�L 0 errtext errText�K 0 errnum errNum� �J�I��H�G
�J 
alis�I 0 errtext errText� �F�E�D
�F 
errn�E 0 errnum errNum�D  �H��
�G 
errn�P # ��&W X  ��  fY )�lhOe ascr  ��ޭ
GDPC                �                                                                         T   res://.godot/exported/133200997/export-34afcb3bda2393b8f6a0cd71512aeb81-player.scn   
      }      �	_aT%�#�W]o�d�    T   res://.godot/exported/133200997/export-355d13cdae363422fb27e1334a2030c0-platform.scn�      q      �fBΕ��8�.�-�G    T   res://.godot/exported/133200997/export-457acf5a027a10c2fe6598b406a22972-level.scn   @      Z      xS��<��5�#��)    P   res://.godot/exported/133200997/export-caa10c3bd03e8ed3318171f5303f6366-game.scn        9      "O����sx���9�e#�    ,   res://.godot/global_script_class_cache.cfg  �              ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-a070fd38cd3a09d6c0335ecf11f3d604.ctex0      �      �Yz=������������       res://.godot/uid_cache.bin  �$      �       �� �bN�Ka�?&���       res://project.binary0%            �o�S$�a�B���=       res://scene/game.tscn.remap �      a       �C�M�� �=‷+2       res://scene/level.tscn.remapP      b       �g���>���[g�x        res://scene/platform.tscn.remap �      e       ��03D�0�x;�U��x        res://scene/player.tscn.remap   0       c       Z�N���8�!�&��XQ       res://script/btn.gd �      6      �l��T�FƜ/���6       res://script/player.gd  �      M      ��5�v6�}諺@xQI       res://sprite/icon.svg   �       �      C��=U���^Qu��U3       res://sprite/icon.svg.import      �       �v>���~��ԩt            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://scene/player.tscn  �d9�/Xm   PackedScene    res://scene/level.tscn �����p�       local://PackedScene_gg8fe G         PackedScene          	         names "         Game    Node2D    Player 	   Camera2D 	   position    Level    	   variants                 
         ��               node_count             nodes        ��������       ����                ���                            ����                     ���                    conn_count              conns               node_paths              editable_instances              version             RSRC       RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://scene/platform.tscn �T�b�M 1      local://PackedScene_vq7ok          PackedScene          	         names "         Level    Node2D 	   Platform 	   position    scale 
   Platform2 
   Platform3    	   variants                 
     P�  =C
   ���@  �?
    �tD  6
    ��D  A�      node_count             nodes     (   ��������       ����                ���                                  ���                                  ���                                conn_count              conns               node_paths              editable_instances              version             RSRC      RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D    res://sprite/icon.svg ��C���XB      local://RectangleShape2D_lotgk [         local://PackedScene_bxmfc �         RectangleShape2D       
     �B  C         PackedScene          	         names "      	   Platform    StaticBody2D 	   Sprite2D    texture    CollisionShape2D    shape    	   variants                                 node_count             nodes        ��������       ����                      ����                            ����                   conn_count              conns               node_paths              editable_instances              version             RSRC               RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://script/player.gd ��������
   Texture2D    res://sprite/icon.svg ��C���XB      local://RectangleShape2D_ivb5d �         local://PackedScene_jx8s4 �         RectangleShape2D       
     �B  �B         PackedScene          	         names "         Player    script    jump_force    move_speed    gravity    CharacterBody2D 	   Sprite2D    texture    CollisionShape2D    shape    GroundChecker    target_position 
   RayCast2D    	   variants                      aD     �C     �A                   
         �B      node_count             nodes     *   ��������       ����                                              ����                           ����   	                     
   ����                   conn_count              conns               node_paths              editable_instances              version             RSRC   extends Node

func NumBool(arg : bool):
	return 1 if arg else 0

# DOWN
func d(arg : String):
	return NumBool(Input.is_action_pressed(arg))

# PRESSED
func p(arg : String):
	return NumBool(Input.is_action_just_pressed(arg))

# RELEASED
func r(arg : String):
	return NumBool(Input.is_action_just_released(arg))
          extends CharacterBody2D

@export var jump_force: float
@export var move_speed: float
@export var gravity: float

func _physics_process(delta):
	velocity.y += gravity
	
	var dir = btn.d("forward") - btn.d("backward")
	velocity.x = dir * move_speed
	
	if btn.p("jump") and is_on_floor():
		velocity.y = -jump_force
	
	move_and_slide()
   GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cad354qibkbqx"
path="res://.godot/imported/icon.svg-a070fd38cd3a09d6c0335ecf11f3d604.ctex"
metadata={
"vram_texture": false
}
                [remap]

path="res://.godot/exported/133200997/export-caa10c3bd03e8ed3318171f5303f6366-game.scn"
               [remap]

path="res://.godot/exported/133200997/export-457acf5a027a10c2fe6598b406a22972-level.scn"
              [remap]

path="res://.godot/exported/133200997/export-355d13cdae363422fb27e1334a2030c0-platform.scn"
           [remap]

path="res://.godot/exported/133200997/export-34afcb3bda2393b8f6a0cd71512aeb81-player.scn"
             list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             ����lc�#   res://scene/game.tscn�����p�    res://scene/level.tscn�T�b�M 1   res://scene/platform.tscn �d9�/Xm   res://scene/player.tscn��C���XB   res://sprite/icon.svgECFG      application/config/name      	   Spreading      application/run/main_scene          res://scene/game.tscn      application/config/features$   "         4.2    Forward Plus       application/config/icon          res://sprite/icon.svg      autoload/btn         *res://script/btn.gd
   input/jump0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script         input/forward�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script         input/backward�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script              
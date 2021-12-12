extends Node
	
	
func open_plugin_editor(path:String):
	if !has_node("PluginEditorWindow"):
		var _editor = load("res://Gui/PluginEditor/EditorWindow/PluginEditorWindow.tscn")
		var _ins = _editor.instantiate()
		_ins.name = "PluginEditorWindow"
		add_child(_ins,true)
		_ins.load_script(path)
	else:
		GuiManager.console_print_error("当前已存在编辑中的插件文件，请关闭编辑器后重试!")


func console_print_text(text):
	get_tree().call_group("Console","add_newline_with_time",text)
	
	
func console_print_error(text):
	get_tree().call_group("Console","add_error",text)
	
	
func console_print_warning(text):
	get_tree().call_group("Console","add_warning",text)
	

func console_print_success(text):
	get_tree().call_group("Console","add_success",text)
	
	
func console_save_log(close:bool = false):
	get_tree().call_group("Console","save_log",close)

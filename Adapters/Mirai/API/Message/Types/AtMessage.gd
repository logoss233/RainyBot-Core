extends Message


class_name AtMessage


var data_dic:Dictionary = {
	"type": "At",
	"target": -1,
	"display": ""
}


static func init(target_id:int)->AtMessage:
	var ins:AtMessage = AtMessage.new()
	var dic:Dictionary = ins.data_dic
	dic.target = target_id
	return ins


static func init_meta(dic:Dictionary)->AtMessage:
	var ins:AtMessage = AtMessage.new()
	ins.data_dic = dic
	return ins


func get_target_id()->int:
	return data_dic.id


func set_target_id(target_id:int):
	data_dic.target = target_id

	
func get_display_text()->String:
	return data_dic.display

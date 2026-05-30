@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type(
		"PublicDemoReadinessInspector",
		"CanvasLayer",
		preload("res://addons/shipkit_public_demo_readiness/scripts/demo_readiness_inspector.gd"),
		null
	)


func _exit_tree() -> void:
	remove_custom_type("PublicDemoReadinessInspector")

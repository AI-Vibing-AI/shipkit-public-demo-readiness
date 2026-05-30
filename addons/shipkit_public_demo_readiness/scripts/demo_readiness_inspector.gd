# Free MIT-licensed subset of ShipKit's public demo readiness tooling.
extends CanvasLayer

const ROW_FONT_COLOR := Color(0.08, 0.12, 0.16, 1.0)
const ROW_FONT_SIZE := 15

@export var pause_menu_path: NodePath
@export var demo_controller_path: NodePath
@export var build_stamp_path: NodePath
@export var checklist_path := "res://addons/shipkit_public_demo_readiness/docs/PUBLIC_DEMO_READINESS_CHECKLIST.md"

@onready var readiness_list: VBoxContainer = %ReadinessList


func _ready() -> void:
	refresh()


func refresh() -> void:
	for child in readiness_list.get_children():
		child.queue_free()

	for row in get_readiness_rows():
		var label := Label.new()
		label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
		label.add_theme_color_override("font_color", ROW_FONT_COLOR)
		label.add_theme_font_size_override("font_size", ROW_FONT_SIZE)
		label.text = "%s %s - %s" % [
			"[OK]" if bool(row["passed"]) else "[TODO]",
			row["title"],
			row["detail"],
		]
		readiness_list.add_child(label)


func get_readiness_rows() -> Array:
	var pause_menu := get_node_or_null(pause_menu_path)
	var demo_controller := get_node_or_null(demo_controller_path)
	var build_stamp := get_node_or_null(build_stamp_path)

	return [
		{
			"title": "Pause action exists",
			"passed": InputMap.has_action("pause"),
			"detail": "Players need a reliable way to pause a public demo.",
		},
		{
			"title": "Reset hook present",
			"passed": pause_menu != null and pause_menu.has_signal("demo_reset_requested"),
			"detail": "Host saves can connect to demo_reset_requested after confirmation.",
		},
		{
			"title": "Feedback URL configured",
			"passed": _string_property_is_set(pause_menu, "feedback_url"),
			"detail": "Set feedback_url before uploading a public build.",
		},
		{
			"title": "Store CTA configured",
			"passed": _string_property_is_set(pause_menu, "store_url"),
			"detail": "Set store_url if the demo should route players to a page.",
		},
		{
			"title": "Build stamp set",
			"passed": _string_property_is_set(demo_controller, "build_version") and build_stamp != null and str(build_stamp.text).strip_edges() != "",
			"detail": "A visible build_version makes bug reports actionable.",
		},
		{
			"title": "Source package trust docs",
			"passed": FileAccess.file_exists(checklist_path),
			"detail": "The package includes a public demo readiness checklist.",
		},
	]


func _string_property_is_set(node: Node, property_name: String) -> bool:
	if node == null:
		return false

	var value = node.get(property_name)
	return typeof(value) == TYPE_STRING and value.strip_edges() != ""

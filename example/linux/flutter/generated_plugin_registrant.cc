//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <ann_dynamic_icon/dynamic_icon_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) ann_dynamic_icon_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DynamicIconPlugin");
  dynamic_icon_plugin_register_with_registrar(ann_dynamic_icon_registrar);
}

#include "include/ann_dynamic_icon/ann_dynamic_icon_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "ann_dynamic_icon_plugin.h"

void AnnDynamicIconPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  ann_dynamic_icon::AnnDynamicIconPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

#include "include/dynamic_icon/dynamic_icon_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "dynamic_icon_plugin.h"

void DynamicIconPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  dynamic_icon::DynamicIconPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

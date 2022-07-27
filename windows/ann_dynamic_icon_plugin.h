#ifndef FLUTTER_PLUGIN_DYNAMIC_ICON_PLUGIN_H_
#define FLUTTER_PLUGIN_DYNAMIC_ICON_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace ann_dynamic_icon {

class AnnDynamicIconPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AnnDynamicIconPlugin();

  virtual ~AnnDynamicIconPlugin();

  // Disallow copy and assign.
  AnnDynamicIconPlugin(const AnnDynamicIconPlugin&) = delete;
  AnnDynamicIconPlugin& operator=(const AnnDynamicIconPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace ann_dynamic_icon

#endif  // FLUTTER_PLUGIN_DYNAMIC_ICON_PLUGIN_H_

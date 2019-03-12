package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.flutterbeacon.FlutterBeaconPlugin;
import de.gigadroid.flutterudid.FlutterUdidPlugin;
import com.dfa.introslider.IntroSliderPlugin;
import io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FlutterBeaconPlugin.registerWith(registry.registrarFor("com.flutterbeacon.FlutterBeaconPlugin"));
    FlutterUdidPlugin.registerWith(registry.registrarFor("de.gigadroid.flutterudid.FlutterUdidPlugin"));
    IntroSliderPlugin.registerWith(registry.registrarFor("com.dfa.introslider.IntroSliderPlugin"));
    SharedPreferencesPlugin.registerWith(registry.registrarFor("io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}

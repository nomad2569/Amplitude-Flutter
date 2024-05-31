import 'dart:js_interop';

@JS('amplitude.options')
@staticInterop
class Options {
  external factory Options();
}

extension OptionsExtension on Options {
  external set eventUploadPeriodMillis(int value);
}

@JS('amplitude')
@staticInterop
class Amplitude {
  external factory Amplitude(String instanceName);

  external static Amplitude getInstance(String instanceName);
}

extension AmplitudeExtension on Amplitude {
  external void init(String apiKey, String? userId);
  external void setOptOut(bool optOut);
  external Options get options;
  external void setUserId(String? userId, bool startNewSession);
  external void setDeviceId(String deviceId);
  external void setServerUrl(String serverUrl);
  external void setEventUploadThreshold(int value);
  external void regenerateDeviceId();
  external void setUseDynamicConfig(bool useDynamicConfig);
  external void logEvent(String eventType, JSAny? eventProperties,
      JSAny? optCallback, JSAny? optErrorCallback, bool? outOfSession);
  external void logRevenue(
      double price, int quantity, String? productIdentifier);
  external void setGroup(String groupType, JSAny groupName);
  external void setUserProperties(JSAny userProperties);
  external void clearUserProperties();
  external void sendEvents();
  external void setLibrary(String? libraryName, String? libraryVersion);
  external String getUserId();
  external String getDeviceId();
  external JSAny getSessionId();
  external void setMinTimeBetweenSessionsMillis(int timeInMillis);
  external void setServerZone(String serverZone, bool updateServerUrl);
  external void identify(Identify identify);
  external void groupIdentify(
      String groupType,
      JSAny groupName,
      Identify groupIdentify,
      JSAny? optCallback,
      JSAny? optErrorCallback,
      bool? outOfSession);
  external bool setOffline(bool enabled);
}

@JS('amplitude.Identify')
@staticInterop
class Identify {
  external factory Identify();
}

extension IdentifyExtension on Identify {
  external void add(String key, JSAny value);
  external void append(String key, JSAny value);
  external void prepend(String key, JSAny value);
  external void set(String key, JSAny value);
  external void setOnce(String key, JSAny value);
  external void unset(String key);
  external void preInsert(String key, JSAny value);
  external void postInsert(String key, JSAny value);
  external void remove(String key, JSAny value);
  external void clearAll();
}

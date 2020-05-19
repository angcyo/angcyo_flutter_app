String TAG = "angcyo";

void debug(Object object, [String tag]) {
  print("[DEBUG] ${tag ?? TAG} $object");
}

void info(Object object, [String tag]) {
  print("[INFO] ${tag ?? TAG} $object");
}

void warn(Object object, [String tag]) {
  print("[WARNING] ${tag ?? TAG} $object");
}

void error(Object object, [String tag]) {
  print("[ERROR] ${tag ?? TAG} $object");
}

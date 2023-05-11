enum OptionType { text, image, audio }

OptionType fromOptionTypeString(String type) {
  if (type == "text") {
    return OptionType.text;
  } else if (type == "audio") {
    return OptionType.audio;
  } else if (type == "image") {
    return OptionType.image;
  }

  return OptionType.text;
}

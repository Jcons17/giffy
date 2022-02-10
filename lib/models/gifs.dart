import 'dart:convert';

class GifsModel {
  final String? type;
  final String? id;
  final String? title;
  final Images? images;
  GifsModel({
    this.type,
    this.id,
    this.title,
    this.images,
  });

  GifsModel copyWith({
    String? type,
    String? id,
    String? title,
    Images? images,
  }) {
    return GifsModel(
      type: type ?? this.type,
      id: id ?? this.id,
      title: title ?? this.title,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'id': id,
      'title': title,
      'images': images?.toMap(),
    };
  }

  factory GifsModel.fromMap(dynamic map) {
    return GifsModel(
      type: map['type'],
      id: map['id'],
      title: map['title'],
      images: map['images'] != null ? Images.fromMap(map['images']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory GifsModel.fromJson(String source) =>
      GifsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Gifs(type: $type, id: $id, title: $title, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GifsModel &&
        other.type == type &&
        other.id == id &&
        other.title == title &&
        other.images == images;
  }

  @override
  int get hashCode {
    return type.hashCode ^ id.hashCode ^ title.hashCode ^ images.hashCode;
  }
}

class Images {
  Original? original;
  DownsizedMedium? downsizedMedium;
  Images({
    this.original,
    this.downsizedMedium,
  });

  Images copyWith({
    Original? original,
    DownsizedMedium? downsizedMedium,
  }) {
    return Images(
      original: original ?? this.original,
      downsizedMedium: downsizedMedium ?? this.downsizedMedium,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'original': original?.toMap(),
      'downsizedMedium': downsizedMedium?.toMap(),
    };
  }

  factory Images.fromMap(Map<String, dynamic> map) {
    return Images(
      original:
          map['original'] != null ? Original.fromMap(map['original']) : null,
      downsizedMedium: map['downsizedMedium'] != null
          ? DownsizedMedium.fromMap(map['downsizedMedium'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Images.fromJson(String source) => Images.fromMap(json.decode(source));

  @override
  String toString() =>
      'Images(original: $original, downsizedMedium: $downsizedMedium)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Images &&
        other.original == original &&
        other.downsizedMedium == downsizedMedium;
  }

  @override
  int get hashCode => original.hashCode ^ downsizedMedium.hashCode;
}

class DownsizedMedium {
  String? height;
  String? width;
  String? size;
  String? url;
  DownsizedMedium({
    this.height,
    this.width,
    this.size,
    this.url,
  });

  DownsizedMedium copyWith({
    String? height,
    String? width,
    String? size,
    String? url,
  }) {
    return DownsizedMedium(
      height: height ?? this.height,
      width: width ?? this.width,
      size: size ?? this.size,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'height': height,
      'width': width,
      'size': size,
      'url': url,
    };
  }

  factory DownsizedMedium.fromMap(Map<String, dynamic> map) {
    return DownsizedMedium(
      height: map['height'],
      width: map['width'],
      size: map['size'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DownsizedMedium.fromJson(String source) =>
      DownsizedMedium.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DownsizedMedium(height: $height, width: $width, size: $size, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DownsizedMedium &&
        other.height == height &&
        other.width == width &&
        other.size == size &&
        other.url == url;
  }

  @override
  int get hashCode {
    return height.hashCode ^ width.hashCode ^ size.hashCode ^ url.hashCode;
  }
}

class Original {
  String? height;
  String? width;
  String? url;
  Original({
    this.height,
    this.width,
    this.url,
  });

  Original copyWith({
    String? height,
    String? width,
    String? url,
  }) {
    return Original(
      height: height ?? this.height,
      width: width ?? this.width,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'height': height,
      'width': width,
      'url': url,
    };
  }

  factory Original.fromMap(Map<String, dynamic> map) {
    return Original(
      height: map['height'],
      width: map['width'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Original.fromJson(String source) =>
      Original.fromMap(json.decode(source));

  @override
  String toString() => 'Original(height: $height, width: $width, url: $url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Original &&
        other.height == height &&
        other.width == width &&
        other.url == url;
  }

  @override
  int get hashCode => height.hashCode ^ width.hashCode ^ url.hashCode;
}

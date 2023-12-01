import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

///Lucky Wheel Element Value
@immutable
class Fortune extends Equatable {
  const Fortune({
    required this.id,
    this.titleName,
    required this.backgroundColor,
    this.priority = 1,
    this.icon,
    this.textStyle,
    this.isGift,
    this.link,
  })  : assert(priority >= 0),
        assert(titleName != null || icon != null);

  ///Lucky Value ID
  final int id;

  ///Lucky value title
  final String? titleName;

  ///Background color Lucky value title
  final Color backgroundColor;

  ///Priority spin coefficient
  ///Default value [priority] = 1
  final int priority;

  ///Icon Lucky value
  final Widget? icon;

  ///text style of Lucky value title
  final TextStyle? textStyle;

  final bool? isGift;

  final String? link;

  @override
  List<Object?> get props =>
      [id, titleName, priority, backgroundColor, icon, isGift, link];

  Fortune copyWith(
      {String? titleName,
      Color? backgroundColor,
      int? priority,
      Widget? icon,
      bool? isGift,
      String? link}) {
    return Fortune(
      id: id,
      titleName: titleName ?? this.titleName,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      priority: priority ?? this.priority,
      icon: icon ?? this.icon,
      isGift: isGift ?? this.isGift,
      link: link ?? this.link,
    );
  }
}

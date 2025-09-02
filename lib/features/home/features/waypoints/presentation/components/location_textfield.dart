import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class LocationTextfield extends StatefulWidget {
  final int index;
  final int totalCount;
  final Function(String?) onChanged;
  final PlaceEntity? initialValue;
  final Function() onFocused;
  final Function() onRemoveStop;
  final Function(int) onMapPressed;
  final bool? isFocused;

  const LocationTextfield({
    super.key,
    required this.onChanged,
    required this.index,
    required this.totalCount,
    required this.initialValue,
    required this.onFocused,
    required this.onRemoveStop,
    required this.onMapPressed,
    this.isFocused,
  });

  @override
  State<LocationTextfield> createState() => _LocationTextfieldState();
}

class _LocationTextfieldState extends State<LocationTextfield> {
  bool isFocused = false;
  final focusNode = FocusNode();
  late TextEditingController _controller;
  String? value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue?.address;
    isFocused = widget.isFocused ?? false;
    _controller = TextEditingController(text: widget.initialValue?.address);
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        widget.onFocused();
      }
      setState(() {
        isFocused = focusNode.hasFocus;
      });
    });
    if (isFocused) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ColorPalette.primary99,
        border: Border.all(
          color: isFocused ? ColorPalette.primary50 : ColorPalette.primary95,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  labelText(context),
                  style: context.bodySmall?.copyWith(
                    color: labelColor(context),
                  ),
                ),
                TextFormField(
                  onChanged: (newValue) {
                    widget.onChanged(newValue);
                    setState(() {
                      value = newValue;
                    });
                  },
                  focusNode: focusNode,
                  controller: _controller,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                    hintText: hintText(context),
                    suffix: Transform.translate(
                      offset: const Offset(0, -8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if ((value?.isNotEmpty ?? false) ||
                              (widget.index != 0 && widget.index != (widget.totalCount - 1)))
                            CupertinoButton(
                              minSize: 0,
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              onPressed: () {
                                if (_controller.text.isEmpty &&
                                    widget.index != 0 &&
                                    widget.index != widget.totalCount - 1) {
                                  widget.onRemoveStop();
                                  return;
                                }
                                _controller.clear();
                                widget.onChanged(null);
                              },
                              child: const Icon(
                                Ionicons.close_circle,
                                size: 18,
                                color: ColorPalette.neutralVariant80,
                              ),
                            ),
                          Container(
                            width: 1,
                            height: 24,
                            color: ColorPalette.neutral80,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CupertinoButton(
                            minSize: 0,
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              context.translate.map,
                              style: context.bodyLarge?.copyWith(
                                color: ColorPalette.neutralVariant40,
                              ),
                            ),
                            onPressed: () => widget.onMapPressed(widget.index),
                          )
                        ],
                      ),
                    ),
                    fillColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color labelColor(BuildContext context) =>
      isFocused ? context.theme.colorScheme.primary : context.theme.colorScheme.onSurfaceVariant;

  String labelText(BuildContext context) => widget.index == 0
      ? context.translate.pickupPoint
      : ((widget.index < (widget.totalCount - 1)) ? context.translate.stopPoint : context.translate.dropoffPoint);

  String hintText(BuildContext context) => widget.index == 0
      ? context.translate.enterPickupPoint
      : ((widget.index < (widget.totalCount - 1))
          ? context.translate.enterStopPoint
          : context.translate.enterDropoffPoint);
}

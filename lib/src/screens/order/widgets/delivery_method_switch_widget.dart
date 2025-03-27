import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class DeliveryMethodSwitchWidget extends StatefulWidget {
  const DeliveryMethodSwitchWidget({super.key});

  @override
  State<DeliveryMethodSwitchWidget> createState() =>
      _DeliveryMethodSwitchWidgetState();
}

class _DeliveryMethodSwitchWidgetState
    extends State<DeliveryMethodSwitchWidget> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch<bool>.size(
      height: 40,
      current: value,
      values: const [true, false],
      iconOpacity: 1.0,
      indicatorSize: Size.infinite,
      customIconBuilder: _buildCustomIcon,
      borderWidth: 0,
      iconAnimationType: AnimationType.onHover,
      style: ToggleStyle(
        backgroundColor: Colors.transparent,
        indicatorColor: LightTheme.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      selectedIconScale: 1,
      onChanged: (i) => setState(() => value = i),
    );
  }

  Widget _buildCustomIcon(
    BuildContext context,
    AnimatedToggleProperties local,
    DetailedGlobalToggleProperties global,
  ) {
    return Text(
      local.value ? 'Deliver' : 'Pick Up',
      style: TextStyle(
        color: Color.lerp(
          const Color(0xFF242424),
          Colors.white,
          local.animationValue,
        ),
        fontSize: 18,
        fontWeight: local.value ? FontWeight.w600 : FontWeight.w400,
      ),
    );
  }
}

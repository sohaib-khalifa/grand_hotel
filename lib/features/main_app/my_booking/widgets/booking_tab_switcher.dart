import 'package:flutter/material.dart';
import 'package:grand_hotel/features/main_app/utils/main_app_constants.dart';

class BookingTabSwitcher extends StatelessWidget {
  final int tabIndex;
  final ValueChanged<int> onChanged;

  const BookingTabSwitcher({
    super.key,
    required this.tabIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Expanded(
            child: _BookingTabButton(
              title: 'Booked',
              isSelected: tabIndex == 0,
              onTap: () => onChanged(0),
            ),
          ),
          Expanded(
            child: _BookingTabButton(
              title: 'History',
              isSelected: tabIndex == 1,
              onTap: () => onChanged(1),
            ),
          ),
        ],
      ),
    );
  }
}

class _BookingTabButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const _BookingTabButton({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? MainAppColors.background : Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}

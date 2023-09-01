import 'package:flutter/widgets.dart';

class DismissKeyboard extends StatelessWidget {
  final Widget child;
  const DismissKeyboard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: child,
    );
  }
}
/// use main 
 DismissKeyboard(
        child: MaterialApp()
   )

  //Key board appear screen move  
  //    padding.only(bottom: MediaQuery.of(context).viewInsets.bottom),

      SizedBox(height:MediaQuery.of(context).viewInsets.bottom+20),





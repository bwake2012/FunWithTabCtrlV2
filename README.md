Fun with Tab Ctrl V2

Exercise the UIKit `UITabBarController` on iOS and visionOS. 

- Do we get an ornament?
- Can we show and hide the ornament?

For iOS 18 and above there is a way to hide and show the tab bar control that also hides and shows the ornament in visionOS. Setting `tabBar.isHidden` does not do that.

The call to `setTabBarHidden` does not seem to change the `isHidden` state of the tab bar control in visionOS.

```
    tabBarIsHidden.toggle()
    if #available(iOS 18.0, visionOS 2.0, *) {
        tabBarController.setTabBarHidden(!tabBarController.tabBar.isHidden, animated: true)
    } else {
        tabBarController.tabBar.isHidden = tabBarIsHidden
    }
```


https://github.com/user-attachments/assets/f713c194-92bd-4de2-a98d-e43e0702af82


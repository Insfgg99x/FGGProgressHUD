#FGGProgressHUD

![演示](https://github.com/Insfgg99x/FGGProgressHUD/blob/master/demo.png)

##Producation
一个极简的HUD蒙板，直接在controller中使用，`[self showHUD]`

##Usage

show:

```
[self showHUD];

```

hide:

```
[self hideHUD];
```

like this:

```
- (void)viewDidLoad {

    [self showHUD];
    __weak typeof(self) wkself=self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

    [wkself hideHUD];
    });
}
```

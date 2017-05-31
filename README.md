#FGGProgressHUD

![演示](https://github.com/Insfgg99x/FGGProgressHUD/blob/master/demo.png)

##Usage

- in view

```
[FGGProgressHUD showLoadingOnView:self.view];

[FGGProgressHUD hideLoadingFromView:self.view];

```

- in controller

```
[self showHUD];

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

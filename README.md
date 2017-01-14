# Waggle

`Waggle` 通过`UIViewAnimation`为开发者提供了轻量级的更加函数式的API, 并且提供了`waggle(摇晃)`的便捷动画方式。

## Requirements

1. Swift3.0 +
2. Xcode8.0 +

## Install

使用`carthage`安装，将以下代码添加到`Cartfile`:

```ruby
github "DanisFabric/Waggle"
```
## 使用

### Animator 更函数化的`UIViewAnimation`API

```Swift
// UIView API
UIView.animate(withDuration: duration) {
  // animations
}

// Waggle
UIView.animator(duration: duration).animations {
  // animations
}.begin()

```

```Swift
// UIView API
UIView.animate(withDuration: duration, animations: {
  // animations
}) { finished in
  // completion
}

// Waggle
UIView.aniamtor(duration: duration).animations {
  // animations
}.completion { finished in
  // compeltion
}.begin()

```

```Swift
// UIView API
UIView.animate(withDuration: duration, delay: 2, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: options, animations: {
  // animations
}) { (finished) in
  //completion
}

// Waggle
UIView.animator(duration: duration).delay(2).spring(damping: damping, velocity: velocity).animations {
  // animations
}.completion { finished in
  // completion
}.begin()
```

### Waggle 晃动UIView

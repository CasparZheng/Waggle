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

可以直接下载demo app查看具体效果，使用方式也十分简单。

```Swift
testView.waggle.rotate(by: CGFloat(M_PI_4)) { finished in
  // completion
}
testView.waggle.scale(by: 1.2, y: 1.2) { finished in
  // completion
}
testView.waggle.move(by: UIOffset(horizontal: 36, vertical: 36)) { finished in
  // completion
}
```

Waggle提供了默认参数的基本动画，下列函数:

```Swift
testView.waggle.rotate()
testView.waggle.zoomIn()
testView.waggle.zoomOut()
testView.waggle.moveHorizontal()
testView.waggle.moveVertical()

```

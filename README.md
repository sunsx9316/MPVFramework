# MPVFramework

基于 [MPVKit](https://github.com/mpvkit/MPVKit) 的 [mpv](https://mpv.io/) C API 类型安全 Swift 封装层。

## 安装

通过 Swift Package Manager 添加：

```
https://github.com/sunsx9316/MPVFramework
```

## 使用

```swift
import MPVFramework

let mpv = MPV()
mpv?.initialize()

mpv?.playback.isPaused = false
mpv?.audio.volume = 50
mpv?.time.seek(to: 120, absolute: true)
mpv?.subtitle.fontSize = 48

mpv?.on(.endFile) { event in
    print("播放结束")
}

mpv?.loadFile("/path/to/video.mkv")
```

## 模块

| API | 说明 |
|-----|------|
| `MPV` | 核心类，事件处理，属性读写 |
| `PlaybackAPI` | 播放/暂停，速度控制 |
| `TimeAPI` | 播放位置，时长，跳转 |
| `AudioAPI` | 音量，静音，音频设备 |
| `VideoAPI` | 宽高比，全屏，硬件解码 |
| `SubtitleAPI` | 字幕轨道，延迟，字号，颜色 |
| `TrackAPI` | 音频/视频/字幕轨道枚举 |

## 环境要求

- iOS 14.0+ / macOS 12.0+ / tvOS 17.0+
- Swift 5.9+

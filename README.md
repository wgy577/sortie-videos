<div align="center">

# Sortie · 视频资源库 · Video Archive

复杂约束 HFSP 舰载机出动调度项目的带水印视频资源<br>
Watermarked video assets for the complex-constrained HFSP carrier-aircraft sortie scheduling project

[**主项目 · Main project**](https://github.com/wgy577/Sortie)

</div>

## 在线播放 · Watch online

点击“播放”可在浏览器中观看对应视频。每个公开视频均包含画面内缓慢移动水印和右下角固定署名。

Select **Play** to watch the corresponding video in your browser. Every published video contains a slow-moving in-frame watermark and a fixed lower-right signature.

| # | 场景 · Scenario | 在线播放 · Play |
|--:|:--|:--:|
| 01 | PPO 训练曲线 · PPO training curve | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/1_training_curve.mp4) |
| 02 | 异步训练与甘特图演化 · Asynchronous training and Gantt evolution | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/2_training_gantt.mp4) |
| 03 | 单机出动基准 · Single-aircraft baseline | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/3_sortie1.mp4) |
| 04 | 双机并行调度 · Two-aircraft parallel dispatch | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/4_sortie2_parallel.mp4) |
| 05 | 20 机快速总览 · 20-aircraft fast overview | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/5_sortie20_fast.mp4) |
| 06 | 20 机高清 1.5× · 20-aircraft HD 1.5× | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/6_sortie20_hd_1.5x.mp4) |
| 07 | 20 机高清 1.5× 备选 · 20-aircraft HD 1.5× alternate | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/7_sortie20_hd_1.5x_alt.mp4) |
| 08 | 20 机高清原速 · 20-aircraft HD normal speed | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/8_sortie20_hd_1x.mp4) |
| 09 | 8 机快速总览 · 8-aircraft fast overview | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/9_sortie8_fast.mp4) |
| 10 | 8 机高清完整过程 · 8-aircraft HD complete process | [播放 · Play](https://wgy577.github.io/sortie-videos/videos/10_sortie8_hd.mp4) |

## 水印工作流 · Watermark workflow

公开 MP4 由本地保留的原始视频通过 [`apply_watermarks.sh`](apply_watermarks.sh) 生成。水印直接烧录在视频帧中，并非可以单独关闭的字幕或元数据图层。

Published MP4 files are generated from locally preserved originals with [`apply_watermarks.sh`](apply_watermarks.sh). The watermark is burned directly into the video frames rather than stored as a removable subtitle or metadata layer.

# Scroll-Driven Video Scrub

The technique behind Fable 5's viral scroll-driven websites — scroll
position controlling video playback frame-by-frame.

## How It Works

1. Generate a video of the product deconstructing/reconstructing (via Sora,
   Runway Gen-4, Kling, Higgsfield)
2. Place as full-bleed background
3. Wire `video.currentTime` to scroll position via GSAP ScrollTrigger + `scrub: true`
4. Scroll down = video advances. Scroll up = video reverses.

## Technical Stack
```
GSAP ScrollTrigger (scrub) + Lenis (smooth scroll) + video element
```
Lenis normalizes scroll behavior so video scrubbing doesn't stutter across
browsers.

## Video Requirements
- 60fps for smooth scrubbing (30fps acceptable)
- MP4 (H.264) for widest compatibility
- Preload="auto" on the video element
- Match viewport aspect ratio
- Keep files under 10MB for performance (use compression)

## Advanced: Three.js + Scroll-Driven
For interactive 3D: use Three.js with GSAP ScrollTrigger to animate camera
position, object rotation, or material properties based on scroll. The Boeing
747 trace shows a 30-minute headless Three.js session where the agent built a
procedural model and ran vision feedback loops self-evaluating its work.

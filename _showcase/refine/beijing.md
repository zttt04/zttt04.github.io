---
show: true
width: 6
date: 2026-02-23 00:04:00 +0800
group: Photograph
location: Beijing
time_label: 2026.02
images:
- src: /assets/images/showcase/refine/beijin/20230122-P1000867.jpg
  title: Beijing
- src: /assets/images/showcase/refine/beijin/20230122-P1000873.jpg
  title: Beijing
- src: /assets/images/showcase/refine/beijin/20230122-P1000894.jpg
  title: Beijing
- src: /assets/images/showcase/refine/beijin/20230122-P1000911.jpg
  title: Beijing
- src: /assets/images/showcase/refine/beijin/20230122-P1011044.jpg
  title: Beijing
---

<div class="p-2">
  <h5 class="mb-2">{{ page.location }} · {{ page.time_label }}</h5>
  {% include widgets/image_grid.html images=page.images %}
</div>

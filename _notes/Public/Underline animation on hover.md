---
title: Underline animation on hover
content-type: notes
feed: show
date: 2023-07-22
tags: coding, css
---

Nice css for underlining 
[[This is an example note]]

```css
a {
    color: var(--color-text-link);
    display: inline-block;
    position: relative;
}

a::after {
    content: '';
    position: absolute;
    width: 100%;
    border-radius: 4px;
    height: 2px;
    bottom: 0;
    left: 0;
    background-color: var(--color-text-link);
    transform-origin: right;
    transform: scaleX(0);
    transition: transform .3s ease-in-out;
}

a:hover::after {
    transform-origin: left;
    transform: scaleX(1);
}
```

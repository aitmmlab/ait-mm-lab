+++
title = "Migrate from Jekyll"
date = "2015-10-10T13:07:31+02:00"
tags = ["ipsum"]
categories = ["lorem"]
banner = "img/banners/banner-5.jpg"
draft = true
+++

## Move static content to `static`
Jekyll has a rule that any directory not starting with `_` will be copied as-is to the `_site` output. Hugo keeps all static content under `static`. You should therefore move it all there.
With Jekyll, something that looked like

    ▾ <root>/
        ▾ images/
            logo.png

should become

    ▾ <root>/
        ▾ static/
            ▾ images/
                logo.png

Additionally, you'll want any files that should reside at the root (such as `CNAME`) to be moved to `static`.

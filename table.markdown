---
layout: page
title: AirTable
permalink: /table/
---

{% for item in site.data.Jekyll %}

<p>{{item.title}}</p>
<p>{{item.content}}</p>
{% if  item.image %}
<img src="{{item.image[0].url}}" alt={{item.title}} />
{% endif %}

{% endfor %}
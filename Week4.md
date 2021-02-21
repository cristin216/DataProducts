---
title: "Refugee Arrivals to the US"
author: "C. Kalinowski"
date: "2/20/2021"
output: 
  ioslides_presentation: 
    css: styles.css
    keep_md: yes
#runtime: shiny
---



## [ Refugees in the United States ]{style="color: #243569;"}

The United States has always been a country of immigrants and refugees.

-   How many refugees do we have?
-   Where are they coming from?

With the amount of data publicly available it is possible to see the current trends in refugee arrivals.

## [ The Data]{style="color: #243569;"}

The Department of Homeland Security publishes a report every 10 years showing how many refugees have arrived from each country per year.


```
      Country  2010  2011  2012  2013  2014  2015  2016 2017 2018 2019
1 Afghanistan   515   428   481   661   753   910  2737 1311  805 1198
2     Armenia  <NA>    15     8     3    10    49    55   57   58   33
3  Azerbaijan    18    16    10     3    15    18    32   20 <NA> <NA>
4     Belarus   103    66    83    10    46    98   185   73  181   96
5      Bhutan 12363 14999 15070  9134  8434  5775  5817 3550 2228   32
6       Burma 16693 16972 14160 16299 14598 18386 12347 5078 3555 4932
```

This data can be found at <https://www.dhs.gov/immigration-statistics/yearbook>

## 

But who wants to look at tables when you can see colorful plots?

Check the countries you want to see from the list...

![](Checklist.png)

## [ The App]{style="color: #243569;"}

...and see the trends for yourself!


```{=html}
<div id="htmlwidget-887d57a2497ec7e9e4a8" style="width:720px;height:432px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-887d57a2497ec7e9e4a8">{"x":{"visdat":{"6bcc76c31f85":["function () ","plotlyVisDat"],"6bcc150077f7":["function () ","data"]},"cur_data":"6bcc150077f7","attrs":{"6bcc150077f7":{"x":{},"y":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"scatter","mode":"lines","color":{},"inherit":true}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"xaxis":{"domain":[0,1],"automargin":true,"title":"Year"},"yaxis":{"domain":[0,1],"automargin":true,"title":"Number"},"hovermode":"closest","showlegend":true},"source":"A","config":{"showSendToCloud":false},"data":[{"x":[2002,2005,2008,2011,2014,2017],"y":[128,1447,18139,16972,14598,5078],"type":"scatter","mode":"lines","name":"Burma","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"line":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":[2000,2003,2006,2009,2012,2015,2018],"y":[1354,251,405,1135,1863,7876,7878],"type":"scatter","mode":"lines","name":"DRC","marker":{"color":"rgba(252,141,98,1)","line":{"color":"rgba(252,141,98,1)"}},"textfont":{"color":"rgba(252,141,98,1)"},"error_y":{"color":"rgba(252,141,98,1)"},"error_x":{"color":"rgba(252,141,98,1)"},"line":{"color":"rgba(252,141,98,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":[2001,2004,2007,2010,2013,2016,2019],"y":[2473,66,1608,18016,19488,9880,465],"type":"scatter","mode":"lines","name":"Iraq","marker":{"color":"rgba(141,160,203,1)","line":{"color":"rgba(141,160,203,1)"}},"textfont":{"color":"rgba(141,160,203,1)"},"error_y":{"color":"rgba(141,160,203,1)"},"error_x":{"color":"rgba(141,160,203,1)"},"line":{"color":"rgba(141,160,203,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```

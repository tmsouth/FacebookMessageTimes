# Facebook Message Times

An R package for analysing downloaded Facebook Messenger data. Allows you to import messenger data in the form of JSON files and extract the times that messages were sent. Build in visualisation is avaible in limited form. 

## Getting Data

Go to Facebook to [Download your Information](https://www.facebook.com/settings?tab=your_facebook_information)

Choose 
```
Date Range: All of my data
Format: JSON
Media Quality: Low
```

To speed up the download, check `Deselect All` and then select only `Messages`.

The download should be unzipped and each conversation is inside a folder of the conversation name.

## Installation
Using `devtools` in R.

```
devtools::install_github("tobinsouth/FacebookMessageTimes")
```

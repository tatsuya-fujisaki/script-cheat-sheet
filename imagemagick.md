# How to resize the width of an image
```shell
convert input.png -resize 320x output.png
```

# How to add a border of the width 8px to an image
```shell
convert input.png -border 8 output.png
```

# How to convert transparency to white
```shell
convert input.png -flatten output.png
```

# How to convert an image to grayscale
```shell
convert input.png -type grayscale output.png
```

# How to merge images horizontally (side by side)
```shell
# "-gravity center" vertically center input images.
convert input1.png input2.png input3.png -gravity center +append output.png
```

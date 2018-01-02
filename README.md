# ml-on-websites
Using machine learning on websites with OpenCV, Keras, Webdriver and Firefox

This Dockerfile is a combination from aerofs/webdriver-python and uetchy/machinelearning slightly modified.
This was needed to apply some machine learning on websites with python scripts for a cd environment without gpu support.

Pull it

```
$ docker pull ttsgmk/ml-on-websites
```

Or build it

```
$ docker build -t ttsgmk/ml-for-websites .
```

Use it with a local root folder in which your script(s) are placed.

```
$ docker run -v $PWD/root/:/root -it ttsgmk/ml-on-websites python /root/your_python_script.py 
```


FROM jupyter/tensorflow-notebook
COPY . /Formula1/
WORKDIR /Formula1
RUN pip install -r requirements.txt
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

# run with:
# docker build -t formula_1 .
# docker run -it --rm -p 8888:8888 -v ${PWD}:/Formula1 formula_1 
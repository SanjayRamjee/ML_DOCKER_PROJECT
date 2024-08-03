FROM jupyter/tensorflow-notebook

USER $NB_UID

RUN pip install --upgrade pip && \
    pip install transformers && \
    pip install pysrt && \
    fix-permissions "/home/${NB_USER}"

COPY enmkbhd2Mcar.srt  Translator.ipynb  ./


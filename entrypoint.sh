if [ ! -d ./venv ]; then \
    echo "[INFO] >> Installing dependencies, please wait..." && \
    python -m venv venv && \
    . venv/bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip freeze > requirements.txt && \ 
    echo "[INFO] >> Testing chatbot..." && \
    python chatbot_service/chatbot.py \
;else \
    echo "[INFO] >> Ready to launch server, checking new dependencies, please wait..." && \
    . venv/bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip freeze > requirements.txt && \ 
    echo "[INFO] >> Testing chatbot…" && \
    python chatbot_service/chatbot.py \
;fi
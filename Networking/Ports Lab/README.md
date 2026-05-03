# Ports Lab

Two FastAPI apps on different ports. Demonstrates port binding, multiple services on one host.

- `blue-app` → port 3000
- `red-app` → port 3001

## Setup

Each app has its own `requirements.txt`. Run them in separate terminals.

### Blue app (terminal 1)

```bash
cd blue-app
python -m venv venv
# Windows
venv\Scripts\activate
# macOS/Linux
source venv/bin/activate

pip install -r requirements.txt
fastapi dev main.py --port 3000
```

### Red app (terminal 2)

```bash
cd red-app
python -m venv venv
# Windows
venv\Scripts\activate
# macOS/Linux
source venv/bin/activate

pip install -r requirements.txt
fastapi dev main.py --port 3001
```

## Test

```bash
curl http://localhost:3000/
curl http://localhost:3001/
```

Expect:
- 3000 → `{"message": "FastAPI App Color \"Blue\" Running on PORT 3000"}`
- 3001 → `{"message": "FastAPI App Color \"Red\" Running on PORT 3001"}`

## Lab Tasks

1. Run both apps simultaneously. Hit each port.
2. Stop blue. Try `curl http://localhost:3000/` — observe connection refused.
3. Try starting red on port 3000 while blue runs there — observe port-in-use error.
4. Find process bound to port:
   - Windows: `netstat -ano | findstr :3000`
   - macOS/Linux: `lsof -i :3000`
5. Bind app to `0.0.0.0` vs `127.0.0.1` — test access from another device on LAN.

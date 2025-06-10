from flask import Flask, request, jsonify
import tempfile
import requests
import os

app = Flask(__name__)

# Your Discord Webhook URL here
DISCORD_WEBHOOK_URL = 'https://discord.com/api/webhooks/webhook ID' # Replace this with your actual webhook

@app.route('/upload', methods=['POST'])
def upload():
    filename = request.form.get('filename', 'backup.rsc')
    data = request.form.get('data', '')

    # Save data to a temporary file
    with tempfile.NamedTemporaryFile(delete=False, mode='w', suffix='.rsc') as tmpfile:
        tmpfile.write(data)
        tmpfile_path = tmpfile.name

    # Upload the file to Discord
    with open(tmpfile_path, 'rb') as f:
        files = {
            'file': (filename, f, 'text/plain'),
        }

        payload = {
            'content': f"📦 MikroTik Backup File `{filename}`", # If you would like a different message, you can change this. 
        }

        response = requests.post(DISCORD_WEBHOOK_URL, data=payload, files=files)

    # Clean up temporary file
    os.remove(tmpfile_path)

    if response.status_code == 204:
        return jsonify({'status': 'success'}), 200
    else:
        return jsonify({'status': 'error', 'discord_response': response.text}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000) # Port can be changed to any unused port, however this needs to be changed in the router script too. 

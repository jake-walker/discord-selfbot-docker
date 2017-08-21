FROM python:3.6.2-stretch

ENV TOKEN PUT_YOUR_DISCORD_TOKEN_HERE

# Install Git and Build Tools
RUN apt-get update
RUN apt-get install -y git build-essential

# Clone the selfbot
WORKDIR /opt/
RUN git clone https://github.com/appu1232/Discord-Selfbot.git
WORKDIR /opt/Discord-Selfbot/

# Install pip packages required by the bot
RUN pip install -r requirements.txt

# Remove Build Tools
RUN apt-get remove -y build-essential

# Copy Entrypoint Script
COPY ./entrypoint.sh /opt/

RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]

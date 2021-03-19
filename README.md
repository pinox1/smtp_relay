# SMTP Relay Office 365 for LOB Application (no authentication)

Prerequisites: https://docs.microsoft.com/en-us/exchange/mail-flow-best-practices/how-to-set-up-a-multifunction-device-or-application-to-send-email-using-microsoft-365-or-office-365

git clone https://github.com/pinox1/smtp_relay.git

docker build -t smtp_relay .

docker run -d -p 25:25 smtp_relay

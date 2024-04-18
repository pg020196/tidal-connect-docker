[Unit]
Description=Tidal Connect Docker Service
After=docker.service network-online.target
Requires=docker.service network-online.target

[Service]
WorkingDirectory=${PWD}/Docker/
Type=oneshot
RemainAfterExit=yes

ExecStart=/bin/docker compose up -d

ExecStop=/bin/docker compose down

ExecReload=/bin/docker compose up -d

[Install]
WantedBy=multi-user.target


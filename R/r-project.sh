echo "~~~~~ Sandeep's R Project Generator ~~~~~"

mkdir .vscode
cd .vscode/

tee tasks.json <<-EOF
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "build and run",
            "type": "shell",
            "command": "R",
            "args": [
                "<",
                "\${file}",
                "--no-restore",
                "--no-save",
                "--quiet"
            ],
            "group": {
                "kind": "build",
                "isDefault": true
            }
        }
    ]
}
EOF

cd ..
tee main.r <<-EOF
EOF

echo "Successfully created a new R project!"
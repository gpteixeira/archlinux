#!/bin/sh
echo "Starting generate your git public key \n"

read -p "git e-mail: \n" git_email
ssh-keygen -t ed25519 -C ${git_email}

echo "Start the ssh-agent in the background."
eval "$(ssh-agent -s)"

echo "Add your SSH private key to the ssh-agent."
ssh-add ~/.ssh/id_ed25519

echo "This is you pulbic key. Copy the SSH public key to your clipboard and add it on your github account. \n"
cat ~/.ssh/id_ed25519.pub

echo "To know more, just click in the link ---> https://docs.github.com/en/enterprise-server@3.14/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account"

echo "Link to access your account keys: \n"
echo "https://github.com/settings/keys"

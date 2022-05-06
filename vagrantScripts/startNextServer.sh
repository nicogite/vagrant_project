# Install dependencies (-y to auto answer yes if needed)
apt update -y && apt upgrade -y
apt install -y nodejs npm
apt install -y git
npm install -y --global yarn

# Clone project
mkdir -p /srv/www
git clone https://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@github.com/rghima/next_app.git /srv/www/next_app

cd /srv/www/next_app
yarn
yarn build
yarn run start
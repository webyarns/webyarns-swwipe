rm -fr dist
yarn build

rsync  -auHzP \
   dist/ \
   --delete \
   eabigelowjr@webyarns.com:www/rptest/webyarns-swwipe/$(git branch --show-current)

mkdir -p /home/rparree/documents/nextcloud-private/shares/alan/webyarns-swwipe
rsync  -auHzP \
   dist/ \
   --delete \
   --exclude "css/" \
   --exclude "images/" \
   --exclude "js/" \
   --exclude "lib/" \
   --exclude "index.html" \
   /home/rparree/documents/nextcloud-private/shares/alan/webyarns-swwipe/$(git branch --show-current)

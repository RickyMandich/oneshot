echo "fetch:"
git fetch --all
echo "pull:"
git pull
echo "last commit:    $(git log -1 --pretty=%s)"

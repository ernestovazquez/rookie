git add .
msg="Reconstrucción $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"
git push origin master
hugo -d ../ernestovazquez.github.io/
cd ../ernestovazquez.github.io/
git add .
git commit -m "$msg"
git push origin master



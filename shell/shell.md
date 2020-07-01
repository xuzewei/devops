```sh
# with a bash for loop
for f in ./*.wav; do echo "file '$f'" >> mylist.txt; done
# or with printf
printf "file '%s'\n" ./*.wav > mylist.txt
```
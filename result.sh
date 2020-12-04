echo "wait...."

cd ../
echo "make bonus...."
echo "please wait for seconds...."
make fclean > /dev/null
make bonus > /dev/null
sleep 5

CDIR=${PWD##*/}
cd ../
# あとであなたのパソコンのディレクトリを間違って消さないように変な名前のディレクトリにしています
mkdir test_minishell_momoka
cd ${CDIR}/ft_mini_ls_test

bash option.sh $1 $2 > /dev/null

RES=$?

cd ../../

echo  ""

if test ${RES} -eq 1; then
    echo -e "\033[32mSuccess. No results.\033[m"
else
    echo -e "\033[31mHere is the result ❤️❤️❤\033[m"
    echo "============================================================="
    cat "test_minishell_momoka/result$1"
    echo "============================================================="
fi

echo  ""

rm -rf test_minishell_momoka
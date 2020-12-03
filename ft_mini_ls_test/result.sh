cd ../
make re > /dev/null
cd ../
# あとであなたのパソコンのディレクトリを間違って消さないように変な名前のディレクトリにしています
mkdir test_minishell_momoka
cd ft_mini_ls/ft_mini_ls_test

bash option.sh $1 > /dev/null

RES=$?

cd ../../

echo  ""

if test ${RES} -eq 1; then
    echo "Success. No results."
else
    echo "Here is the result ❤️❤️❤️"
    echo "============================================================="
    cat "test_minishell_momoka/result$1"
    echo "============================================================="
fi

echo  ""

rm -rf test_minishell_momoka
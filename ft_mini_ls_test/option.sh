cd ../

./ft_mini_ls $1 $2> ../test_minishell_momoka/test1
ls -1rt $1 $2> ../test_minishell_momoka/test2

diff -y ../test_minishell_momoka/test1 ../test_minishell_momoka/test2 > "../test_minishell_momoka/result$1"

EDCODE=$?

if test ${EDCODE} -eq 1; then
    # wrong
    if [[ $1 == "" ]]; then
        echo -e "\033[31m no option \033[m"
    else
        echo -e "\033[31m option $1 $2\033[m"
    fi
else
    # success
    if [[ $1 == "" ]]; then
        echo -e "\033[32m no option \033[m"
    else
        echo -e "\033[32m option $1 $2\033[m"
    fi
fi

cd ft_mini_ls_test


if test ${EDCODE} -eq 1; then
    exit 0;
else
    exit 1;
fi

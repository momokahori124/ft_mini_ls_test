echo ""
echo -e "\033[35mtest starting....❤️\033[m"
echo ""

read -p "You want to try option \"a\" ? y/n : " option_a
read -p "You want to try permission check? y/n : " per

cd ../
echo ""
echo "make bonus...."
echo "please wait for seconds...."
make fclean > /dev/null
make bonus > /dev/null
echo ""

sleep 3

echo "making many directorys for review..."
rm -rf tmp
mkdir tmp
mkdir tmp/dir1 tmp/dir2 tmp/dir3
sleep 1
touch tmp/file1 tmp/file2 tmp/dir1/file3
sleep 1

if [[ $per == "y" ]]; then
    echo ""
    echo "making no permission file ...."
    touch tmp/dir1/file4 tmp/dir1/file5
    mkdir tmp/no_permission tmp/no_permission2
    touch tmp/no_permission/file6
    chmod 000 tmp/no_permission
    chmod 000 tmp/no_permission2
fi
echo ""

echo "making files at the same time...."
echo "      file_1, file_2, file_3, file_4, file_5"

rm -f file file_{1,2,3,4,5}
touch file
cp -a file file_1
cp -a file file_2
cp -a file file_3
cp -a file file_4
cp -a file file_5

sleep 1
echo ""

echo "making directory for diff..."

# current directory

CDIR=${PWD##*/}

cd ../
# あとであなたのパソコンのディレクトリを間違って消さないように変な名前のディレクトリにしています
rm -rf test_minishell_momoka
mkdir test_minishell_momoka

cd ${CDIR}/ft_mini_ls_test
echo ""

sleep 1

echo -e "\033[35m----------------------------\033[m"
echo -e "       \033[35mSingle　option\033[m"
echo -e "\033[35m----------------------------\033[m"
echo ""

COUNT=0
TEST=0

bash option.sh ""
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -u
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -U
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -s
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -S
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -R
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

echo ""

echo -e "\033[35m----------------------------\033[m"
echo -e "       \033[35mMultiple　option\033[m"
echo -e "\033[35m----------------------------\033[m"
echo ""

bash option.sh -uU
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -Uu
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -us
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -su
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -uS
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -uR
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -Us
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -US
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -UR
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -sS
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -sR
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -SR
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -SRU
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -sRu
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -SRsUu
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -Uuuuuu -uuuU
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -Uuuuuu -uu
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -RuuuRu -uuU
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -ssRu
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -sSs
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))
echo ""

if [[ $option_a == "y" ]]; then

    echo -e "\033[35m----------------------------\033[m"
    echo -e "       \033[35madd a option\033[m"
    echo -e "\033[35m----------------------------\033[m"
    echo ""

    bash option.sh -a
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -uaU
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -Uau
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -uUa
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -saS
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -Ssa
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -SsaR
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -aRus
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -au
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -aU
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -as
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -aS
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -aR
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -a -R
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -au -R
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -au -U
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))

    bash option.sh -U -ua
    if test $? -eq 1; then
        COUNT=$(( COUNT + 1 ))
    fi
    TEST=$(( TEST + 1 ))
fi

echo ""
echo "success : ${COUNT}/${TEST}"
echo ""

echo "You want to check result, try \"bash result.sh [option]\" "
echo ""

cd ../

chmod 777 tmp/no_permission
chmod 777 tmp/no_permission2
rm -rf tmp
rm -f file file_{1,2,3,4,5}
cd ../
cd ../

rm -rf test_minishell_momoka

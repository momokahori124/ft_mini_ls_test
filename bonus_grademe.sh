echo ""
echo "test starting....❤️"
echo ""

cd ../
echo "make re...."
make re > /dev/null

echo "making directorys for review..."
rm -rf tmp
mkdir tmp
mkdir tmp/dir1 tmp/dir2 tmp/dir3
sleep 1
touch tmp/file1 tmp/file2 tmp/dir1/file3
sleep 1
touch tmp/dir1/file4 tmp/dir1/file5

echo "making directory for diff..."

cd ../
# あとであなたのパソコンのディレクトリを間違って消さないように変な名前のディレクトリにしています
rm -rf test_minishell_momoka
mkdir test_minishell_momoka

cd ft_mini_ls/ft_mini_ls_test
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

bash option.sh -a
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

# bash option.sh -G
# if test $? -eq 1; then
#     COUNT=$(( COUNT + 1 ))
# fi
# TEST=$(( TEST + 1 ))

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

bash option.sh -uU
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -us
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

bash option.sh -Uau
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -uaU
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

bash option.sh -aRus
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -SRsUu
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

echo ""
echo "success : ${COUNT}/${TEST}"
echo ""

echo "You want to check result, try \"bash result.sh [option]\" "
echo ""

# cd ../
# rm -rf tmp
# cd ../
# rm -rf test_minishell_momoka

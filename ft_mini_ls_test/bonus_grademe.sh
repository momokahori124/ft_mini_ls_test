echo ""
echo "test starting....❤️"
echo ""

cd ../
make re > /dev/null
mkdir tmp
mkdir tmp/dir1 tmp/dir2 tmp/dir3
touch tmp/file1 tmp/file2 tmp/dir1/file3

cd ../
# あとであなたのパソコンのディレクトリを間違って消さないように変な名前のディレクトリにしています
mkdir test_minishell_momoka

cd ft_mini_ls/ft_mini_ls_test

sleep 3

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

bash option.sh -U
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -u
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

bash option.sh -au
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

# bash option.sh -aG
# if test $? -eq 1; then
#     COUNT=$(( COUNT + 1 ))
# fi
# TEST=$(( TEST + 1 ))

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

# bash option.sh -sG
# if test $? -eq 1; then
#     COUNT=$(( COUNT + 1 ))
# fi
# TEST=$(( TEST + 1 ))

bash option.sh -sR
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

# bash option.sh -UG
# if test $? -eq 1; then
#     COUNT=$(( COUNT + 1 ))
# fi
# TEST=$(( TEST + 1 ))

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

# bash option.sh -sG
# if test $? -eq 1; then
#     COUNT=$(( COUNT + 1 ))
# fi
# TEST=$(( TEST + 1 ))

bash option.sh -sR
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

# bash option.sh -SG
# if test $? -eq 1; then
#     COUNT=$(( COUNT + 1 ))
# fi
# TEST=$(( TEST + 1 ))

bash option.sh -SR
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

# bash option.sh -GR
# if test $? -eq 1; then
#     COUNT=$(( COUNT + 1 ))
# fi
# TEST=$(( TEST + 1 ))

echo ""
echo -e "\033[35m----------------------------\033[m"
echo -e "       \033[35mCorner Case\033[m"
echo -e "\033[35m----------------------------\033[m"
echo ""

bash option.sh -a -R
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh -apple
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))

bash option.sh ---
if test $? -eq 1; then
    COUNT=$(( COUNT + 1 ))
fi
TEST=$(( TEST + 1 ))




echo ""
echo "success : ${COUNT}/${TEST}"
echo ""

echo "You want to check result, try \"bash result.sh [option]\" "
echo ""

cd ../
rm -rf tmp
cd ../
rm -rf test_minishell_momoka

#!/bin/bash

#  ���$IFS������, ����ֵΪ��,
#+ ��ô"$*"��"$@"��������������������ʾλ�ò���. 

mecho ()       # ��ӡλ�ò���.
{
echo "$1,$2,$3";
}


IFS=""         # ������, ��ֵΪ��.
set a b c      # λ�ò���.

mecho "$*"     # abc,,
mecho $*       # a,b,c

mecho $@       # a,b,c
mecho "$@"     # a,b,c

#  ��$IFSֵΪ��ʱ, $*��$@����Ϊ������
#+ �������е�Bash����sh�İ汾.
#  ����ڽű���ʹ������"����"�ǲ����ǵ�.


# ��л, Stephane Chazelas.

exit 0
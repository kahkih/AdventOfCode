#!/bin/bash

# find the numbers that sum 2020
# multiply those numbers that is the answer

declare -a list_of_numbers

declare -i first_number
declare -i second_number
declare -i sum_of_numbers
declare -i winning_number
declare -i compare_number

list_of_numbers=(1411 1802 1773 1775 1442 1471 1048 1403 1881 1930 1710 1717 685 1255 1451 1870 208 1725 1879 143 1372 1726 1357 1624 1378 1993 1721 1712 1867 1355 1743 1942 114 407 1892 1937 2001 1466 1461 1770 1441 1410 1915 1482 1512 1631 1954 1632 1788 1971 1989 1427 1684 1749 1795 1839 1358 1354 1591 1924 1456 2002 1746 1323 1946 1889 296 1908 1959 1944 1655 1602 1768 1666 1465 1782 1739 1472 1576 645 1496 1538 1761 1353 1639 1904 1765 1519 1948 1900 1376 1918 1950 667 1976 1925 1939 1319 1895 1510 1480 735 1674 1997 1868 1728 1893 1500 1363 1840 1905 1361 1894 1558 1369 1922 1367 1463 1365 1504 1898 1343 1436 1700 1911 1811 1829 1984 1444 1806 1455 1778 1835 1817 1668 1907 1748 2007 1534 1269 1473 1572 2006 1651 1853 1943 1968 1969 1437 1692 1955 1964 1821 1805 1999 1614 1754 1888 1832 1623 1723 1678 2008 1819 1595 1972 1229 1703 1762 1818 1062 1599 1996 2000 1960 1927 1407 1414 1923 1685 1998 1497 1687 1416 1757 1470 1810 2010 1553 1379 1495 1565 1796 2004 1899 2009 1395 1388 1902 1741);
#list_of_numbers=(10 20 30 40 50) use this to test the rest

compare_number=2020

# loop through the list to use the first number as input to compare with other numbers
for number in "${list_of_numbers[@]}"
do
    first_number=$number;

# use if statement to exit the loop. Could also continue the loop
# that would be less code but also less efficient.
    if [[ $sum_of_numbers -eq $compare_number ]]
        then
          break
        fi

# for every number in the loop we need to check the sum including the first number itself
    for number in "${list_of_numbers[@]}"
    do
        second_number=$(($number));
        sum_of_numbers=$(($first_number + $second_number))
# check if the sum is 2020
        echo "Sum= $sum_of_numbers"

# if the sum equals 2020 then the winning number will be printed
        if [[ $sum_of_numbers -eq $compare_number ]]
        then
          echo "First number: $first_number"
          echo "Second number: $second_number"
          winning_number=$(($first_number * $second_number))
          echo "Winning number: $winning_number"
          break
        fi
    done
done
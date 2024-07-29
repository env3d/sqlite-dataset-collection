#!/bin/bash

# Use this script to generate test for an assignment
# private the assignment directory as argument

cd $1

mkdir tests

# create the answer hash
ls *.sql | xargs -I {} bash -c "sqlite3 *.db < {} | md5sum > tests/{}.md5"

# create pytest file
cat <<EOF > tests/test_assignment.py
import os
import pytest
import re

@pytest.mark.parametrize("sql_file", [ f for f in os.listdir(".") if re.search(r'\d{1,2}.sql', f) ])
def test_sql(sql_file):
    result = os.popen(f'sqlite3 *.db < {sql_file} | md5sum').read()
    expected = os.popen(f'cat tests/{sql_file}.md5').read()
    assert result == expected
EOF


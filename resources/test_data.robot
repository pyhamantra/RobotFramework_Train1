*** Variables ***
${user_name}   standard_user
${user_password}    secret_sauce

# List
@{users}=   Create List     standard_user   locked_out_user     problem_user    performance_glitch_user

# Dictionary
&{USER1}    name=standard_user  password=${user_password}
&{USER2}    name=locked_out_user  password=${user_password}
&{USER3}    name=locked_out_user  password=${user_password}
&{USER4}    name=problem_user  password=${user_password}
&{USER5}    name=performance_glitch_user  password=${user_password}

# List with dictionary of users
@{USERS_LIST}=  Create List &{USER1}    &{USER2}    &{USER3}    &{USER4}    &{USER5}
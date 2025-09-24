def get_username(word_type):
    username=input(f'enter your {word_type}')
    return username
noun1= get_username('noun1')
noun2=get_username('noun2')
noun3=get_username('noun3')
verb1= get_username('verb1')
verb2=get_username('verb2')
adjective=get_username('adjective')
adjective2=get_username('adjevtive2')
story=f"""Ek tha raja {noun1} and ek thi rani {noun2} and they used to {verb1} each other so much. 
Everyone used to say that they are {adjective} couple and then came {noun3} into their life as their son and their 
life turned even more {adjective2}
"""
print(story)
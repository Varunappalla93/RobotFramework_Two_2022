import os

def create_folder():
    os.mkdir("C:\\Users\\VARUN\Downloads\\VarunRobot")


def create_sub_folder():
    os.mkdir("C:\\Users\\VARUN\Downloads\\VarunRobot\\VarunAppalla")


def create_folder_argument(foldername):
    os.mkdir("C:\\"+foldername)


def concatenate_twovalues(val1,val2):
    val3=val1+" "+val2
    return val3


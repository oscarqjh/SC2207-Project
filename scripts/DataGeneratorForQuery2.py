import random



def generate_data(member_A, member_B):
    restaurant = random.randint(1, 9)
    date = f"{random.randint(2023, 2024)}-{12}-{random.randint(1, 28)}"
    hrs = random.randint(1, 3)
    in_hr = random.randint(7, 20)
    in_min = random.randint(0, 59)
    in_sec = random.randint(0, 59)
    out_hr = in_hr + hrs
    out_min = random.randint(0, 59)
    out_sec = random.randint(0, 59)
    time_in = f"{date} {in_hr}:{in_min}:{in_sec}"
    money = random.randint(100, 300)
    time_out = f"{date} {out_hr}:{out_min}:{out_sec}"
    return (member_A, restaurant, time_in, money, time_out), (member_B, restaurant, time_in, money, time_out)


if __name__ == "__main__":
    # for i in range(30):
    #     a, b = generate_data(3, 4)
    #     print(a, end=",\n")
    #     print(b, end=",\n")
    # for i in range(20):
    #     a, b = generate_data(37, 40)
    #     print(a, end=",\n")
    #     print(b, end=",\n")
    for i in range(5):
        a, b = generate_data(41, 42)
        print(a, end=",\n")
        print(b, end=",\n")

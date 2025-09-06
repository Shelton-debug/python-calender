import calendar

def display_calender():
    
    year = int(input('Enter the year: '))
    month = int(input('Enter your month: '))
    
    cal = calendar.TextCalendar(calendar.SUNDAY)
    
    month_calender = cal.formatmonth(year, month)
    
    print(month_calender)
    
display_calender()
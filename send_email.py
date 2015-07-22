import smtplib
sender = "conninie@gmail.com" 
receiver = ["connor@twizz.com"] 
message = "Just letting you know, somebody has pushed to the server!" 
try: 
    session = smtplib.SMTP('smtp.gmail.com',587) 
    session.ehlo() 
    session.starttls() 
    session.ehlo() 
    session.login(sender,'password_here') 
    session.sendmail(sender,receiver,message) 
    session.quit() 
except smtplib.SMTPException: 
    print('Error')

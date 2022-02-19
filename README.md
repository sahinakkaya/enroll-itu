## enroll-itu

This little script will help you enroll courses by sending POST request to ITU's course registration page.
You can also add a line to your [crontab](https://linux.die.net/man/5/crontab)  file so that it runs periodically ( ͡° ͜ʖ ͡°).

### How do I use this?
You need to get a token from course registration page.

- Visit [https://kepler-beta.itu.edu.tr/ogrenci/DersKayitIslemleri/DersKayit](https://kepler-beta.itu.edu.tr/ogrenci/DersKayitIslemleri/DersKayit)
- Right click on the page and choose inspect or press `F12`.
- Go to the network tab and click any link in the page.
- Find the `Authorization` header and copy it.
- Open `enroll.sh` and follow the comments.

<img src="https://raw.github.com/Asocia/enroll-itu/main/screenshot.png">

### How do I run it periodically?
Make sure you can run the script manually. Then run `crontab -e` and add the following line to your crontab. 
```bash
* * * * * /absolute/path/to/enroll.sh
```
This will run the script once every minute. Enjoy!

### Wait, but is this legal??
You can read [this issue](https://github.com/Asocia/enroll-itu/issues/1) and convince yourself it is legal. If you don't think it is legal, please share us why.

### I may have a brain damage because I still can't understand. ITU can know if one is using this, right? So this should be dangerous.
Yes, sure. What makes you think that this script is written in a way that it is impossible to tell the difference from using a regular browser? Of course they can know and I am saying that it is fine. 

Can they judge me because of the browser I am using? No. Now, think that I am using my own browser named `curl` which sends nothing but only the headers I want to send. OKAY?

Now, go ahead and report me to the authorities. My mail address and all the information you need is in this commit.

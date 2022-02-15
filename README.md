## enroll-itu

This little script will help you enroll courses by sending POST request to ITU's course registration page.
You can also add a line to your [crontab](https://linux.die.net/man/5/crontab)  file so that it runs periodically ( ͡° ͜ʖ ͡°).

### Usage
You need to get a token from course registration page.

- Visit [https://kepler-beta.itu.edu.tr/ogrenci/DersKayitIslemleri/DersKayit](https://kepler-beta.itu.edu.tr/ogrenci/DersKayitIslemleri/DersKayit)
- Right click on the page and choose inspect or press `F12`.
- Go to the network tab and click any link in the page.
- Find the `Authorization` header and copy it.
- Open `enroll.sh` and follow the comments.

<img src="https://raw.github.com/Asocia/enroll-itu/main/screenshot.png">

### Adding it to crontab
Make sure you can run the script manually. Then run `crontab -e` and add the following line to your crontab. 
```bash
* * * * * /absolute/path/to/enroll.sh
```
This will run the script once every minute. Enjoy!

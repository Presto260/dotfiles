from i3pystatus import Status

status = Status()

status.register("clock",
    format="%a %-d %b %X",)

status.register("cpu_usage",
    format="{usage:02}%",)

status.register("temp",
    format="TEMP: {temp:.0f}°C",)

status.register("battery",
    format="{status} {percentage:.0f}%",
    alert=True,
    alert_percentage=5,
    status={
        "DIS": "↓",
        "CHR": "↑",
        "FULL": "",
    },)

status.register("battery",
    format="{status} {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    status={
        "DIS":  " Discharging",
        "CHR":  " Charging",
	"FULL": " On AC",
    },)


status.register("runwatch",
    name="DHCP",
    path="/var/run/dhc*.pid",)


status.register("network",
    interface="enp3s0",
    format_up="{v4cidr} {quality:03.0f}%",)


status.register("network",
    interface="wlp2s0",
    hints = {"markup": "pango"},
    format_up = "<span color=\"#00FF00\">{essid} {quality:03.0f}%  {v4cidr} </span> ↓:{bytes_recv:6.1f}KiB ↑:{bytes_sent:5.1f}KiB",
    format_down = "",
    dynamic_color = True,
    start_color = "#00FF00",
    end_color = "#FF0000",
    color_down = "#FF0000",
    )


status.register("disk",
    path="/",
    format=" F:{avail}G",)

status.register("disk",
    hints={"separator": False, "separator_block_width": 0},
    path="/",
    format="Disk U:{used}G",)

status.register("pulseaudio",
    format="♪{volume}",)


status.register("mpd",
    format="{title}{status}{album}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)


status.run()

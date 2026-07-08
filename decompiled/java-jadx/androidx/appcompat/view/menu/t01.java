package androidx.appcompat.view.menu;

import java.util.Calendar;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class t01 {
    public static final t01 c = new t01(null, null);
    public final Long a;
    public final TimeZone b;

    public t01(Long l, TimeZone timeZone) {
        this.a = l;
        this.b = timeZone;
    }

    public static t01 c() {
        return c;
    }

    public Calendar a() {
        return b(this.b);
    }

    public Calendar b(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.a;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }
}

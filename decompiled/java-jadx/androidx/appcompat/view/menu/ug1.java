package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class ug1 implements qg1, Iterable {
    public final String m;

    public ug1(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.m = str;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 c() {
        return new ug1(this.m);
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Boolean d() {
        return Boolean.valueOf(!this.m.isEmpty());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ug1) {
            return this.m.equals(((ug1) obj).m);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Double f() {
        if (this.m.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(this.m);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final String g() {
        return this.m;
    }

    public final int hashCode() {
        return this.m.hashCode();
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Iterator i() {
        return new ah1(this);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new yg1(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04ac  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0525  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0539  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x05d9  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0633  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x063c  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c3 A[PHI: r19
      0x00c3: PHI (r19v21 char) = 
      (r19v0 char)
      (r19v0 char)
      (r19v6 char)
      (r19v0 char)
      (r19v7 char)
      (r19v0 char)
      (r19v8 char)
      (r19v0 char)
      (r19v9 char)
      (r19v0 char)
      (r19v10 char)
      (r19v0 char)
      (r19v11 char)
      (r19v0 char)
      (r19v12 char)
      (r19v0 char)
      (r19v13 char)
      (r19v0 char)
      (r19v14 char)
      (r19v0 char)
      (r19v15 char)
      (r19v0 char)
      (r19v16 char)
      (r19v0 char)
      (r19v17 char)
      (r19v0 char)
      (r19v18 char)
     binds: [B:39:0x00c0, B:248:0x014a, B:249:0x014e, B:245:0x013f, B:246:0x0142, B:242:0x0135, B:243:0x0138, B:239:0x012b, B:240:0x012e, B:236:0x0121, B:237:0x0124, B:233:0x0117, B:234:0x011a, B:230:0x010d, B:231:0x0110, B:227:0x0103, B:228:0x0106, B:224:0x00f9, B:225:0x00fc, B:221:0x00ef, B:222:0x00f2, B:218:0x00e5, B:219:0x00e8, B:215:0x00db, B:216:0x00de, B:212:0x00d1, B:213:0x00d4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x030a  */
    @Override // androidx.appcompat.view.menu.qg1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final qg1 p(String str, pw1 pw1Var, List list) {
        String str2;
        String str3;
        String str4;
        char c;
        String str5;
        String str6;
        String str7;
        String str8;
        int i;
        int i2;
        pw1 pw1Var2;
        String g;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || "search".equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str)) {
            str2 = "toLocaleUpperCase";
        } else {
            str2 = "toLocaleUpperCase";
            if (!str2.equals(str)) {
                str3 = "hasOwnProperty";
                str4 = "trim";
                if (!str4.equals(str)) {
                    throw new IllegalArgumentException(String.format("%s is not a String function", str));
                }
                str.hashCode();
                c = 65535;
                switch (str.hashCode()) {
                    case -1789698943:
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        str8 = "match";
                        if (str.equals(str6)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1776922004:
                        str5 = "charAt";
                        str7 = "toString";
                        str8 = "match";
                        str6 = str3;
                        if (str.equals(str7)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1464939364:
                        str5 = "charAt";
                        if (str.equals("toLocaleLowerCase")) {
                            str8 = "match";
                            str6 = str3;
                            str7 = "toString";
                            c = 2;
                            break;
                        }
                        str8 = "match";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case -1361633751:
                        str5 = "charAt";
                        if (str.equals(str5)) {
                            c = 3;
                        }
                        str8 = "match";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case -1354795244:
                        if (str.equals("concat")) {
                            c = 4;
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case -1137582698:
                        if (str.equals("toLowerCase")) {
                            c = 5;
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case -906336856:
                        if (str.equals("search")) {
                            c = 6;
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case -726908483:
                        if (str.equals(str2)) {
                            c = 7;
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case -467511597:
                        if (str.equals("lastIndexOf")) {
                            c = '\b';
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case -399551817:
                        if (str.equals("toUpperCase")) {
                            c = '\t';
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case 3568674:
                        if (str.equals(str4)) {
                            c = '\n';
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case 103668165:
                        if (str.equals("match")) {
                            c = 11;
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case 109526418:
                        if (str.equals("slice")) {
                            c = '\f';
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case 109648666:
                        if (str.equals("split")) {
                            c = '\r';
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case 530542161:
                        if (str.equals("substring")) {
                            c = 14;
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case 1094496948:
                        if (str.equals("replace")) {
                            c = 15;
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    case 1943291465:
                        if (str.equals("indexOf")) {
                            c = 16;
                        }
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                    default:
                        str8 = "match";
                        str5 = "charAt";
                        str6 = str3;
                        str7 = "toString";
                        break;
                }
                switch (c) {
                    case 0:
                        iu1.g(str6, 1, list);
                        String str9 = this.m;
                        qg1 b = pw1Var.b((qg1) list.get(0));
                        if ("length".equals(b.g())) {
                            return qg1.j;
                        }
                        double doubleValue = b.f().doubleValue();
                        return (doubleValue != Math.floor(doubleValue) || (i = (int) doubleValue) < 0 || i >= str9.length()) ? qg1.k : qg1.j;
                    case 1:
                        iu1.g(str7, 0, list);
                        return this;
                    case 2:
                        iu1.g("toLocaleLowerCase", 0, list);
                        return new ug1(this.m.toLowerCase());
                    case q02.c.c /* 3 */:
                        iu1.n(str5, 1, list);
                        int a = !list.isEmpty() ? (int) iu1.a(pw1Var.b((qg1) list.get(0)).f().doubleValue()) : 0;
                        String str10 = this.m;
                        return (a < 0 || a >= str10.length()) ? qg1.l : new ug1(String.valueOf(str10.charAt(a)));
                    case 4:
                        if (list.isEmpty()) {
                            return this;
                        }
                        StringBuilder sb = new StringBuilder(this.m);
                        for (int i3 = 0; i3 < list.size(); i3++) {
                            sb.append(pw1Var.b((qg1) list.get(i3)).g());
                        }
                        return new ug1(sb.toString());
                    case q02.c.e /* 5 */:
                        iu1.g("toLowerCase", 0, list);
                        return new ug1(this.m.toLowerCase(Locale.ENGLISH));
                    case q02.c.f /* 6 */:
                        iu1.n("search", 1, list);
                        return Pattern.compile(!list.isEmpty() ? pw1Var.b((qg1) list.get(0)).g() : qg1.e.g()).matcher(this.m).find() ? new yf1(Double.valueOf(r0.start())) : new yf1(Double.valueOf(-1.0d));
                    case q02.c.g /* 7 */:
                        iu1.g(str2, 0, list);
                        return new ug1(this.m.toUpperCase());
                    case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                        iu1.n("lastIndexOf", 2, list);
                        String str11 = this.m;
                        String g2 = list.size() <= 0 ? qg1.e.g() : pw1Var.b((qg1) list.get(0)).g();
                        return new yf1(Double.valueOf(str11.lastIndexOf(g2, (int) (Double.isNaN(list.size() < 2 ? Double.NaN : pw1Var.b((qg1) list.get(1)).f().doubleValue()) ? Double.POSITIVE_INFINITY : iu1.a(r4)))));
                    case '\t':
                        iu1.g("toUpperCase", 0, list);
                        return new ug1(this.m.toUpperCase(Locale.ENGLISH));
                    case '\n':
                        iu1.g("toUpperCase", 0, list);
                        return new ug1(this.m.trim());
                    case 11:
                        iu1.n(str8, 1, list);
                        Matcher matcher = Pattern.compile(list.size() <= 0 ? "" : pw1Var.b((qg1) list.get(0)).g()).matcher(this.m);
                        return matcher.find() ? new pf1(new ug1(matcher.group())) : qg1.f;
                    case '\f':
                        iu1.n("slice", 2, list);
                        String str12 = this.m;
                        double a2 = iu1.a(!list.isEmpty() ? pw1Var.b((qg1) list.get(0)).f().doubleValue() : 0.0d);
                        int max = (int) (a2 < 0.0d ? Math.max(str12.length() + a2, 0.0d) : Math.min(a2, str12.length()));
                        double a3 = iu1.a(list.size() > 1 ? pw1Var.b((qg1) list.get(1)).f().doubleValue() : str12.length());
                        return new ug1(str12.substring(max, Math.max(0, ((int) (a3 < 0.0d ? Math.max(str12.length() + a3, 0.0d) : Math.min(a3, str12.length()))) - max) + max));
                    case '\r':
                        iu1.n("split", 2, list);
                        String str13 = this.m;
                        if (str13.length() == 0) {
                            return new pf1(this);
                        }
                        ArrayList arrayList = new ArrayList();
                        if (list.isEmpty()) {
                            arrayList.add(this);
                        } else {
                            String g3 = pw1Var.b((qg1) list.get(0)).g();
                            long m = list.size() > 1 ? iu1.m(pw1Var.b((qg1) list.get(1)).f().doubleValue()) : 2147483647L;
                            if (m == 0) {
                                return new pf1();
                            }
                            String[] split = str13.split(Pattern.quote(g3), ((int) m) + 1);
                            int length = split.length;
                            if (!g3.isEmpty() || split.length <= 0) {
                                i2 = 0;
                            } else {
                                boolean isEmpty = split[0].isEmpty();
                                i2 = isEmpty;
                                if (split[split.length - 1].isEmpty()) {
                                    length = split.length - 1;
                                    i2 = isEmpty;
                                }
                            }
                            if (split.length > m) {
                                length--;
                            }
                            while (i2 < length) {
                                arrayList.add(new ug1(split[i2]));
                                i2++;
                            }
                        }
                        return new pf1(arrayList);
                    case 14:
                        iu1.n("substring", 2, list);
                        String str14 = this.m;
                        int a4 = !list.isEmpty() ? (int) iu1.a(pw1Var.b((qg1) list.get(0)).f().doubleValue()) : 0;
                        int a5 = list.size() > 1 ? (int) iu1.a(pw1Var.b((qg1) list.get(1)).f().doubleValue()) : str14.length();
                        int min = Math.min(Math.max(a4, 0), str14.length());
                        int min2 = Math.min(Math.max(a5, 0), str14.length());
                        return new ug1(str14.substring(Math.min(min, min2), Math.max(min, min2)));
                    case 15:
                        iu1.n("replace", 2, list);
                        qg1 qg1Var = qg1.e;
                        String g4 = qg1Var.g();
                        if (!list.isEmpty()) {
                            g4 = pw1Var.b((qg1) list.get(0)).g();
                            if (list.size() > 1) {
                                qg1Var = pw1Var.b((qg1) list.get(1));
                            }
                        }
                        String str15 = this.m;
                        int indexOf = str15.indexOf(g4);
                        if (indexOf < 0) {
                            return this;
                        }
                        if (qg1Var instanceof gg1) {
                            qg1Var = ((gg1) qg1Var).a(pw1Var, Arrays.asList(new ug1(g4), new yf1(Double.valueOf(indexOf)), this));
                        }
                        return new ug1(str15.substring(0, indexOf) + qg1Var.g() + str15.substring(indexOf + g4.length()));
                    case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                        iu1.n("indexOf", 2, list);
                        String str16 = this.m;
                        if (list.size() <= 0) {
                            g = qg1.e.g();
                            pw1Var2 = pw1Var;
                        } else {
                            pw1Var2 = pw1Var;
                            g = pw1Var2.b((qg1) list.get(0)).g();
                        }
                        return new yf1(Double.valueOf(str16.indexOf(g, (int) iu1.a(list.size() >= 2 ? pw1Var2.b((qg1) list.get(1)).f().doubleValue() : 0.0d))));
                    default:
                        throw new IllegalArgumentException("Command not supported");
                }
            }
        }
        str3 = "hasOwnProperty";
        str4 = "trim";
        str.hashCode();
        c = 65535;
        switch (str.hashCode()) {
            case -1789698943:
                break;
            case -1776922004:
                break;
            case -1464939364:
                break;
            case -1361633751:
                break;
            case -1354795244:
                break;
            case -1137582698:
                break;
            case -906336856:
                break;
            case -726908483:
                break;
            case -467511597:
                break;
            case -399551817:
                break;
            case 3568674:
                break;
            case 103668165:
                break;
            case 109526418:
                break;
            case 109648666:
                break;
            case 530542161:
                break;
            case 1094496948:
                break;
            case 1943291465:
                break;
        }
        switch (c) {
        }
    }

    public final String toString() {
        return "\"" + this.m + "\"";
    }
}

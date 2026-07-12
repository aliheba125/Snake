package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.kd0;
import androidx.appcompat.view.menu.q02;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class fi0 {
    public final kd0 a;
    public h b;
    public final kd0.c c;

    public class a implements kd0.c {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x014b A[Catch: JSONException -> 0x003f, TryCatch #1 {JSONException -> 0x003f, blocks: (B:7:0x002b, B:8:0x002f, B:13:0x00df, B:15:0x00e4, B:17:0x00f4, B:19:0x010d, B:21:0x0121, B:31:0x0125, B:24:0x013f, B:26:0x014b, B:28:0x0158, B:33:0x012a, B:34:0x015d, B:36:0x016b, B:38:0x01a1, B:40:0x01af, B:57:0x0241, B:50:0x025d, B:82:0x0198, B:68:0x01d6, B:75:0x01f8, B:47:0x0218, B:89:0x0239, B:61:0x0255, B:54:0x0271, B:91:0x0034, B:94:0x0042, B:97:0x004d, B:100:0x0059, B:103:0x0065, B:106:0x0070, B:109:0x007b, B:112:0x0085, B:115:0x008f, B:118:0x0099, B:121:0x00a3, B:124:0x00ad, B:127:0x00b8, B:130:0x00c3, B:133:0x00ce, B:43:0x0201), top: B:6:0x002b, inners: #0, #3, #7, #11 }] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0158 A[Catch: JSONException -> 0x003f, TryCatch #1 {JSONException -> 0x003f, blocks: (B:7:0x002b, B:8:0x002f, B:13:0x00df, B:15:0x00e4, B:17:0x00f4, B:19:0x010d, B:21:0x0121, B:31:0x0125, B:24:0x013f, B:26:0x014b, B:28:0x0158, B:33:0x012a, B:34:0x015d, B:36:0x016b, B:38:0x01a1, B:40:0x01af, B:57:0x0241, B:50:0x025d, B:82:0x0198, B:68:0x01d6, B:75:0x01f8, B:47:0x0218, B:89:0x0239, B:61:0x0255, B:54:0x0271, B:91:0x0034, B:94:0x0042, B:97:0x004d, B:100:0x0059, B:103:0x0065, B:106:0x0070, B:109:0x007b, B:112:0x0085, B:115:0x008f, B:118:0x0099, B:121:0x00a3, B:124:0x00ad, B:127:0x00b8, B:130:0x00c3, B:133:0x00ce, B:43:0x0201), top: B:6:0x002b, inners: #0, #3, #7, #11 }] */
        @Override // androidx.appcompat.view.menu.kd0.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void C(id0 id0Var, kd0.d dVar) {
            char c;
            e e;
            CharSequence h;
            if (fi0.this.b == null) {
                return;
            }
            String str = id0Var.a;
            Object obj = id0Var.b;
            ea0.f("PlatformChannel", "Received '" + str + "' message.");
            try {
                switch (str.hashCode()) {
                    case -1501580720:
                        if (str.equals("SystemNavigator.setFrameworkHandlesBack")) {
                            c = '\t';
                            break;
                        }
                        c = 65535;
                        break;
                    case -931781241:
                        if (str.equals("Share.invoke")) {
                            c = 14;
                            break;
                        }
                        c = 65535;
                        break;
                    case -766342101:
                        if (str.equals("SystemNavigator.pop")) {
                            c = '\n';
                            break;
                        }
                        c = 65535;
                        break;
                    case -720677196:
                        if (str.equals("Clipboard.setData")) {
                            c = '\f';
                            break;
                        }
                        c = 65535;
                        break;
                    case -577225884:
                        if (str.equals("SystemChrome.setSystemUIChangeListener")) {
                            c = 6;
                            break;
                        }
                        c = 65535;
                        break;
                    case -548468504:
                        if (str.equals("SystemChrome.setApplicationSwitcherDescription")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case -247230243:
                        if (str.equals("HapticFeedback.vibrate")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case -215273374:
                        if (str.equals("SystemSound.play")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case 241845679:
                        if (str.equals("SystemChrome.restoreSystemUIOverlays")) {
                            c = 7;
                            break;
                        }
                        c = 65535;
                        break;
                    case 875995648:
                        if (str.equals("Clipboard.hasStrings")) {
                            c = '\r';
                            break;
                        }
                        c = 65535;
                        break;
                    case 1128339786:
                        if (str.equals("SystemChrome.setEnabledSystemUIMode")) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1390477857:
                        if (str.equals("SystemChrome.setSystemUIOverlayStyle")) {
                            c = '\b';
                            break;
                        }
                        c = 65535;
                        break;
                    case 1514180520:
                        if (str.equals("Clipboard.getData")) {
                            c = 11;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1674312266:
                        if (str.equals("SystemChrome.setEnabledSystemUIOverlays")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 2119655719:
                        if (str.equals("SystemChrome.setPreferredOrientations")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        try {
                            fi0.this.b.n(i.e((String) obj));
                            dVar.c(null);
                            return;
                        } catch (NoSuchFieldException e2) {
                            dVar.b("error", e2.getMessage(), null);
                            return;
                        }
                    case 1:
                        try {
                            fi0.this.b.o(g.e((String) obj));
                            dVar.c(null);
                            return;
                        } catch (NoSuchFieldException e3) {
                            dVar.b("error", e3.getMessage(), null);
                            return;
                        }
                    case 2:
                        try {
                            fi0.this.b.q(fi0.this.h((JSONArray) obj));
                            dVar.c(null);
                            return;
                        } catch (NoSuchFieldException | JSONException e4) {
                            dVar.b("error", e4.getMessage(), null);
                            return;
                        }
                    case q02.c.c /* 3 */:
                        try {
                            fi0.this.b.p(fi0.this.g((JSONObject) obj));
                            dVar.c(null);
                            return;
                        } catch (JSONException e5) {
                            dVar.b("error", e5.getMessage(), null);
                            return;
                        }
                    case 4:
                        try {
                            fi0.this.b.i(fi0.this.k((JSONArray) obj));
                            dVar.c(null);
                            return;
                        } catch (NoSuchFieldException | JSONException e6) {
                            dVar.b("error", e6.getMessage(), null);
                            return;
                        }
                    case q02.c.e /* 5 */:
                        try {
                            fi0.this.b.t(fi0.this.j((String) obj));
                            dVar.c(null);
                            return;
                        } catch (NoSuchFieldException | JSONException e7) {
                            dVar.b("error", e7.getMessage(), null);
                            return;
                        }
                    case q02.c.f /* 6 */:
                        fi0.this.b.k();
                        dVar.c(null);
                        return;
                    case q02.c.g /* 7 */:
                        fi0.this.b.l();
                        dVar.c(null);
                        return;
                    case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                        try {
                            fi0.this.b.j(fi0.this.i((JSONObject) obj));
                            dVar.c(null);
                            return;
                        } catch (NoSuchFieldException | JSONException e8) {
                            dVar.b("error", e8.getMessage(), null);
                            return;
                        }
                    case '\t':
                        fi0.this.b.g(((Boolean) obj).booleanValue());
                        dVar.c(null);
                        return;
                    case '\n':
                        fi0.this.b.a();
                        dVar.c(null);
                        return;
                    case 11:
                        String str2 = (String) obj;
                        if (str2 != null) {
                            try {
                                e = e.e(str2);
                            } catch (NoSuchFieldException unused) {
                                dVar.b("error", "No such clipboard content format: " + str2, null);
                            }
                            h = fi0.this.b.h(e);
                            if (h != null) {
                                dVar.c(null);
                                return;
                            }
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("text", h);
                            dVar.c(jSONObject);
                            return;
                        }
                        e = null;
                        h = fi0.this.b.h(e);
                        if (h != null) {
                        }
                    case '\f':
                        fi0.this.b.m(((JSONObject) obj).getString("text"));
                        dVar.c(null);
                        return;
                    case '\r':
                        boolean s = fi0.this.b.s();
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("value", s);
                        dVar.c(jSONObject2);
                        return;
                    case 14:
                        fi0.this.b.r((String) obj);
                        dVar.c(null);
                        return;
                    default:
                        dVar.a();
                        return;
                }
            } catch (JSONException e9) {
                dVar.b("error", "JSON error: " + e9.getMessage(), null);
            }
            dVar.b("error", "JSON error: " + e9.getMessage(), null);
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;
        public static final /* synthetic */ int[] c;

        static {
            int[] iArr = new int[k.values().length];
            c = iArr;
            try {
                iArr[k.LEAN_BACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[k.IMMERSIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                c[k.IMMERSIVE_STICKY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                c[k.EDGE_TO_EDGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[l.values().length];
            b = iArr2;
            try {
                iArr2[l.TOP_OVERLAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[l.BOTTOM_OVERLAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[f.values().length];
            a = iArr3;
            try {
                iArr3[f.PORTRAIT_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[f.PORTRAIT_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[f.LANDSCAPE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[f.LANDSCAPE_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static class c {
        public final int a;
        public final String b;

        public c(int i, String str) {
            this.a = i;
            this.b = str;
        }
    }

    public enum d {
        LIGHT("Brightness.light"),
        DARK("Brightness.dark");

        public String m;

        d(String str) {
            this.m = str;
        }

        public static d e(String str) {
            for (d dVar : values()) {
                if (dVar.m.equals(str)) {
                    return dVar;
                }
            }
            throw new NoSuchFieldException("No such Brightness: " + str);
        }
    }

    public enum e {
        PLAIN_TEXT("text/plain");

        public String m;

        e(String str) {
            this.m = str;
        }

        public static e e(String str) {
            for (e eVar : values()) {
                if (eVar.m.equals(str)) {
                    return eVar;
                }
            }
            throw new NoSuchFieldException("No such ClipboardContentFormat: " + str);
        }
    }

    public enum f {
        PORTRAIT_UP("DeviceOrientation.portraitUp"),
        PORTRAIT_DOWN("DeviceOrientation.portraitDown"),
        LANDSCAPE_LEFT("DeviceOrientation.landscapeLeft"),
        LANDSCAPE_RIGHT("DeviceOrientation.landscapeRight");

        public String m;

        f(String str) {
            this.m = str;
        }

        public static f e(String str) {
            for (f fVar : values()) {
                if (fVar.m.equals(str)) {
                    return fVar;
                }
            }
            throw new NoSuchFieldException("No such DeviceOrientation: " + str);
        }
    }

    public enum g {
        STANDARD(null),
        LIGHT_IMPACT("HapticFeedbackType.lightImpact"),
        MEDIUM_IMPACT("HapticFeedbackType.mediumImpact"),
        HEAVY_IMPACT("HapticFeedbackType.heavyImpact"),
        SELECTION_CLICK("HapticFeedbackType.selectionClick");

        public final String m;

        g(String str) {
            this.m = str;
        }

        public static g e(String str) {
            for (g gVar : values()) {
                String str2 = gVar.m;
                if ((str2 == null && str == null) || (str2 != null && str2.equals(str))) {
                    return gVar;
                }
            }
            throw new NoSuchFieldException("No such HapticFeedbackType: " + str);
        }
    }

    public interface h {
        void a();

        void g(boolean z);

        CharSequence h(e eVar);

        void i(List list);

        void j(j jVar);

        void k();

        void l();

        void m(String str);

        void n(i iVar);

        void o(g gVar);

        void p(c cVar);

        void q(int i);

        void r(String str);

        boolean s();

        void t(k kVar);
    }

    public enum i {
        CLICK("SystemSoundType.click"),
        ALERT("SystemSoundType.alert");

        public final String m;

        i(String str) {
            this.m = str;
        }

        public static i e(String str) {
            for (i iVar : values()) {
                if (iVar.m.equals(str)) {
                    return iVar;
                }
            }
            throw new NoSuchFieldException("No such SoundType: " + str);
        }
    }

    public static class j {
        public final Integer a;
        public final d b;
        public final Boolean c;
        public final Integer d;
        public final d e;
        public final Integer f;
        public final Boolean g;

        public j(Integer num, d dVar, Boolean bool, Integer num2, d dVar2, Integer num3, Boolean bool2) {
            this.a = num;
            this.b = dVar;
            this.c = bool;
            this.d = num2;
            this.e = dVar2;
            this.f = num3;
            this.g = bool2;
        }
    }

    public enum k {
        LEAN_BACK("SystemUiMode.leanBack"),
        IMMERSIVE("SystemUiMode.immersive"),
        IMMERSIVE_STICKY("SystemUiMode.immersiveSticky"),
        EDGE_TO_EDGE("SystemUiMode.edgeToEdge");

        public String m;

        k(String str) {
            this.m = str;
        }

        public static k e(String str) {
            for (k kVar : values()) {
                if (kVar.m.equals(str)) {
                    return kVar;
                }
            }
            throw new NoSuchFieldException("No such SystemUiMode: " + str);
        }
    }

    public enum l {
        TOP_OVERLAYS("SystemUiOverlay.top"),
        BOTTOM_OVERLAYS("SystemUiOverlay.bottom");

        public String m;

        l(String str) {
            this.m = str;
        }

        public static l e(String str) {
            for (l lVar : values()) {
                if (lVar.m.equals(str)) {
                    return lVar;
                }
            }
            throw new NoSuchFieldException("No such SystemUiOverlay: " + str);
        }
    }

    public fi0(si siVar) {
        a aVar = new a();
        this.c = aVar;
        kd0 kd0Var = new kd0(siVar, "flutter/platform", n60.a);
        this.a = kd0Var;
        kd0Var.e(aVar);
    }

    public final c g(JSONObject jSONObject) {
        int i2 = jSONObject.getInt("primaryColor");
        if (i2 != 0) {
            i2 |= -16777216;
        }
        return new c(i2, jSONObject.getString("label"));
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0053 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int h(JSONArray jSONArray) {
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
            int i5 = b.a[f.e(jSONArray.getString(i4)).ordinal()];
            if (i5 == 1) {
                i2 |= 1;
            } else if (i5 == 2) {
                i2 |= 4;
            } else if (i5 == 3) {
                i2 |= 2;
            } else if (i5 == 4) {
                i2 |= 8;
            }
            if (i3 == 0) {
                i3 = i2;
            }
        }
        if (i2 == 0) {
            return -1;
        }
        switch (i2) {
            case 2:
                return 0;
            case q02.c.c /* 3 */:
            case q02.c.f /* 6 */:
            case q02.c.g /* 7 */:
            case 9:
            case 12:
            case 13:
            case 14:
                if (i3 != 2) {
                    if (i3 != 4) {
                        return i3 != 8 ? 1 : 8;
                    }
                    return 9;
                }
                return 0;
            case 4:
                return 9;
            case q02.c.e /* 5 */:
                return 12;
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                return 8;
            case 10:
                return 11;
            case 11:
                return 2;
            case 15:
                return 13;
        }
    }

    public final j i(JSONObject jSONObject) {
        return new j(!jSONObject.isNull("statusBarColor") ? Integer.valueOf(jSONObject.getInt("statusBarColor")) : null, !jSONObject.isNull("statusBarIconBrightness") ? d.e(jSONObject.getString("statusBarIconBrightness")) : null, !jSONObject.isNull("systemStatusBarContrastEnforced") ? Boolean.valueOf(jSONObject.getBoolean("systemStatusBarContrastEnforced")) : null, !jSONObject.isNull("systemNavigationBarColor") ? Integer.valueOf(jSONObject.getInt("systemNavigationBarColor")) : null, !jSONObject.isNull("systemNavigationBarIconBrightness") ? d.e(jSONObject.getString("systemNavigationBarIconBrightness")) : null, !jSONObject.isNull("systemNavigationBarDividerColor") ? Integer.valueOf(jSONObject.getInt("systemNavigationBarDividerColor")) : null, jSONObject.isNull("systemNavigationBarContrastEnforced") ? null : Boolean.valueOf(jSONObject.getBoolean("systemNavigationBarContrastEnforced")));
    }

    public final k j(String str) {
        int i2 = b.c[k.e(str).ordinal()];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? k.EDGE_TO_EDGE : k.EDGE_TO_EDGE : k.IMMERSIVE_STICKY : k.IMMERSIVE : k.LEAN_BACK;
    }

    public final List k(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            int i3 = b.b[l.e(jSONArray.getString(i2)).ordinal()];
            if (i3 == 1) {
                arrayList.add(l.TOP_OVERLAYS);
            } else if (i3 == 2) {
                arrayList.add(l.BOTTOM_OVERLAYS);
            }
        }
        return arrayList;
    }

    public void l(h hVar) {
        this.b = hVar;
    }

    public void m(boolean z) {
        ea0.f("PlatformChannel", "Sending 'systemUIChange' message.");
        this.a.c("SystemChrome.systemUIChange", Arrays.asList(Boolean.valueOf(z)));
    }
}

package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Bundle;
import androidx.appcompat.view.menu.kd0;
import androidx.appcompat.view.menu.q02;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class xz0 {
    public final kd0 a;
    public f b;
    public final kd0.c c;

    public class a implements kd0.c {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            Object obj;
            int i;
            Bundle bundle;
            if (xz0.this.b == null) {
            }
            String str = id0Var.a;
            obj = id0Var.b;
            ea0.f("TextInputChannel", "Received '" + str + "' message.");
            str.hashCode();
            switch (str) {
                case "TextInput.setPlatformViewClient":
                    try {
                        JSONObject jSONObject = (JSONObject) obj;
                        xz0.this.b.e(jSONObject.getInt("platformViewId"), jSONObject.optBoolean("usesVirtualDisplay", false));
                        dVar.c(null);
                        break;
                    } catch (JSONException e) {
                        dVar.b("error", e.getMessage(), null);
                        return;
                    }
                case "TextInput.setEditingState":
                    try {
                        xz0.this.b.g(e.a((JSONObject) obj));
                        dVar.c(null);
                        break;
                    } catch (JSONException e2) {
                        dVar.b("error", e2.getMessage(), null);
                        return;
                    }
                case "TextInput.setClient":
                    try {
                        JSONArray jSONArray = (JSONArray) obj;
                        xz0.this.b.c(jSONArray.getInt(0), b.a(jSONArray.getJSONObject(1)));
                        dVar.c(null);
                        break;
                    } catch (NoSuchFieldException | JSONException e3) {
                        dVar.b("error", e3.getMessage(), null);
                        return;
                    }
                case "TextInput.hide":
                    xz0.this.b.j();
                    dVar.c(null);
                    break;
                case "TextInput.show":
                    xz0.this.b.a();
                    dVar.c(null);
                    break;
                case "TextInput.sendAppPrivateCommand":
                    try {
                        JSONObject jSONObject2 = (JSONObject) obj;
                        String string = jSONObject2.getString("action");
                        String string2 = jSONObject2.getString("data");
                        if (string2 == null || string2.isEmpty()) {
                            bundle = null;
                        } else {
                            bundle = new Bundle();
                            bundle.putString("data", string2);
                        }
                        xz0.this.b.d(string, bundle);
                        dVar.c(null);
                        break;
                    } catch (JSONException e4) {
                        dVar.b("error", e4.getMessage(), null);
                        return;
                    }
                case "TextInput.setEditableSizeAndTransform":
                    try {
                        JSONObject jSONObject3 = (JSONObject) obj;
                        double d = jSONObject3.getDouble("width");
                        double d2 = jSONObject3.getDouble("height");
                        JSONArray jSONArray2 = jSONObject3.getJSONArray("transform");
                        double[] dArr = new double[16];
                        for (i = 0; i < 16; i++) {
                            dArr[i] = jSONArray2.getDouble(i);
                        }
                        xz0.this.b.f(d, d2, dArr);
                        dVar.c(null);
                        break;
                    } catch (JSONException e5) {
                        dVar.b("error", e5.getMessage(), null);
                        return;
                    }
                case "TextInput.finishAutofillContext":
                    xz0.this.b.i(((Boolean) obj).booleanValue());
                    dVar.c(null);
                    break;
                case "TextInput.clearClient":
                    xz0.this.b.b();
                    dVar.c(null);
                    break;
                case "TextInput.requestAutofill":
                    xz0.this.b.h();
                    dVar.c(null);
                    break;
                default:
                    dVar.a();
                    break;
            }
        }
    }

    public static class b {
        public final boolean a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        public final boolean e;
        public final d f;
        public final c g;
        public final Integer h;
        public final String i;
        public final a j;
        public final String[] k;
        public final b[] l;

        public static class a {
            public final String a;
            public final String[] b;
            public final e c;
            public final String d;

            public a(String str, String[] strArr, String str2, e eVar) {
                this.a = str;
                this.b = strArr;
                this.d = str2;
                this.c = eVar;
            }

            public static a a(JSONObject jSONObject) {
                String string = jSONObject.getString("uniqueIdentifier");
                JSONArray jSONArray = jSONObject.getJSONArray("hints");
                String string2 = jSONObject.isNull("hintText") ? null : jSONObject.getString("hintText");
                JSONObject jSONObject2 = jSONObject.getJSONObject("editingValue");
                String[] strArr = new String[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    strArr[i] = b(jSONArray.getString(i));
                }
                return new a(string, strArr, string2, e.a(jSONObject2));
            }

            public static String b(String str) {
                str.hashCode();
                switch (str) {
                    case "birthdayYear":
                        return "birthDateYear";
                    case "oneTimeCode":
                        return "smsOTPCode";
                    case "creditCardExpirationMonth":
                        return "creditCardExpirationMonth";
                    case "telephoneNumberNational":
                        return "phoneNational";
                    case "newPassword":
                        return "newPassword";
                    case "creditCardSecurityCode":
                        return "creditCardSecurityCode";
                    case "creditCardExpirationDay":
                        return "creditCardExpirationDay";
                    case "fullStreetAddress":
                        return "streetAddress";
                    case "telephoneNumberDevice":
                        return "phoneNumberDevice";
                    case "countryName":
                        return "addressCountry";
                    case "middleInitial":
                        return "personMiddleInitial";
                    case "addressCity":
                        return "addressLocality";
                    case "gender":
                        return "gender";
                    case "postalAddressExtendedPostalCode":
                        return "extendedPostalCode";
                    case "creditCardNumber":
                        return "creditCardNumber";
                    case "namePrefix":
                        return "personNamePrefix";
                    case "middleName":
                        return "personMiddleName";
                    case "nameSuffix":
                        return "personNameSuffix";
                    case "creditCardExpirationDate":
                        return "creditCardExpirationDate";
                    case "creditCardExpirationYear":
                        return "creditCardExpirationYear";
                    case "telephoneNumberCountryCode":
                        return "phoneCountryCode";
                    case "username":
                        return "username";
                    case "name":
                        return "personName";
                    case "email":
                        return "emailAddress";
                    case "addressState":
                        return "addressRegion";
                    case "birthdayMonth":
                        return "birthDateMonth";
                    case "familyName":
                        return "personFamilyName";
                    case "telephoneNumber":
                        return "phoneNumber";
                    case "newUsername":
                        return "newUsername";
                    case "birthday":
                        return "birthDateFull";
                    case "password":
                        return "password";
                    case "givenName":
                        return "personGivenName";
                    case "postalAddress":
                        return "postalAddress";
                    case "postalAddressExtended":
                        return "extendedAddress";
                    case "postalCode":
                        return "postalCode";
                    case "birthdayDay":
                        return "birthDateDay";
                    default:
                        return str;
                }
            }
        }

        public b(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, d dVar, c cVar, Integer num, String str, a aVar, String[] strArr, b[] bVarArr) {
            this.a = z;
            this.b = z2;
            this.c = z3;
            this.d = z4;
            this.e = z5;
            this.f = dVar;
            this.g = cVar;
            this.h = num;
            this.i = str;
            this.j = aVar;
            this.k = strArr;
            this.l = bVarArr;
        }

        public static b a(JSONObject jSONObject) {
            b[] bVarArr;
            String string = jSONObject.getString("inputAction");
            if (string == null) {
                throw new JSONException("Configuration JSON missing 'inputAction' property.");
            }
            if (jSONObject.isNull("fields")) {
                bVarArr = null;
            } else {
                JSONArray jSONArray = jSONObject.getJSONArray("fields");
                int length = jSONArray.length();
                b[] bVarArr2 = new b[length];
                for (int i = 0; i < length; i++) {
                    bVarArr2[i] = a(jSONArray.getJSONObject(i));
                }
                bVarArr = bVarArr2;
            }
            Integer b = b(string);
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray2 = jSONObject.isNull("contentCommitMimeTypes") ? null : jSONObject.getJSONArray("contentCommitMimeTypes");
            if (jSONArray2 != null) {
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    arrayList.add(jSONArray2.optString(i2));
                }
            }
            return new b(jSONObject.optBoolean("obscureText"), jSONObject.optBoolean("autocorrect", true), jSONObject.optBoolean("enableSuggestions"), jSONObject.optBoolean("enableIMEPersonalizedLearning"), jSONObject.optBoolean("enableDeltaModel"), d.e(jSONObject.getString("textCapitalization")), c.a(jSONObject.getJSONObject("inputType")), b, jSONObject.isNull("actionLabel") ? null : jSONObject.getString("actionLabel"), jSONObject.isNull("autofill") ? null : a.a(jSONObject.getJSONObject("autofill")), (String[]) arrayList.toArray(new String[arrayList.size()]), bVarArr);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0073, code lost:
        
            if (r12.equals("TextInputAction.done") == false) goto L4;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static Integer b(String str) {
            str.hashCode();
            char c = 1;
            switch (str.hashCode()) {
                case -810971940:
                    if (str.equals("TextInputAction.unspecified")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -737377923:
                    break;
                case -737089298:
                    if (str.equals("TextInputAction.next")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -737080013:
                    if (str.equals("TextInputAction.none")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -736940669:
                    if (str.equals("TextInputAction.send")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 469250275:
                    if (str.equals("TextInputAction.search")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1241689507:
                    if (str.equals("TextInputAction.go")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1539450297:
                    if (str.equals("TextInputAction.newline")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case 2110497650:
                    if (str.equals("TextInputAction.previous")) {
                        c = '\b';
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
                    return 0;
                case 1:
                    return 6;
                case 2:
                    return 5;
                case q02.c.c /* 3 */:
                    return 1;
                case 4:
                    return 4;
                case q02.c.e /* 5 */:
                    return 3;
                case q02.c.f /* 6 */:
                    return 2;
                case q02.c.g /* 7 */:
                    return 1;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    return 7;
                default:
                    return 0;
            }
        }
    }

    public static class c {
        public final g a;
        public final boolean b;
        public final boolean c;

        public c(g gVar, boolean z, boolean z2) {
            this.a = gVar;
            this.b = z;
            this.c = z2;
        }

        public static c a(JSONObject jSONObject) {
            return new c(g.e(jSONObject.getString("name")), jSONObject.optBoolean("signed", false), jSONObject.optBoolean("decimal", false));
        }
    }

    public enum d {
        CHARACTERS("TextCapitalization.characters"),
        WORDS("TextCapitalization.words"),
        SENTENCES("TextCapitalization.sentences"),
        NONE("TextCapitalization.none");

        public final String m;

        d(String str) {
            this.m = str;
        }

        public static d e(String str) {
            for (d dVar : values()) {
                if (dVar.m.equals(str)) {
                    return dVar;
                }
            }
            throw new NoSuchFieldException("No such TextCapitalization: " + str);
        }
    }

    public static class e {
        public final String a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;

        public e(String str, int i, int i2, int i3, int i4) {
            if (!(i == -1 && i2 == -1) && (i < 0 || i2 < 0)) {
                throw new IndexOutOfBoundsException("invalid selection: (" + String.valueOf(i) + ", " + String.valueOf(i2) + ")");
            }
            if (!(i3 == -1 && i4 == -1) && (i3 < 0 || i3 > i4)) {
                throw new IndexOutOfBoundsException("invalid composing range: (" + String.valueOf(i3) + ", " + String.valueOf(i4) + ")");
            }
            if (i4 > str.length()) {
                throw new IndexOutOfBoundsException("invalid composing start: " + String.valueOf(i3));
            }
            if (i > str.length()) {
                throw new IndexOutOfBoundsException("invalid selection start: " + String.valueOf(i));
            }
            if (i2 > str.length()) {
                throw new IndexOutOfBoundsException("invalid selection end: " + String.valueOf(i2));
            }
            this.a = str;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }

        public static e a(JSONObject jSONObject) {
            return new e(jSONObject.getString("text"), jSONObject.getInt("selectionBase"), jSONObject.getInt("selectionExtent"), jSONObject.getInt("composingBase"), jSONObject.getInt("composingExtent"));
        }

        public boolean b() {
            int i = this.d;
            return i >= 0 && this.e > i;
        }

        public boolean c() {
            return this.b >= 0;
        }
    }

    public interface f {
        void a();

        void b();

        void c(int i, b bVar);

        void d(String str, Bundle bundle);

        void e(int i, boolean z);

        void f(double d, double d2, double[] dArr);

        void g(e eVar);

        void h();

        void i(boolean z);

        void j();
    }

    public enum g {
        TEXT("TextInputType.text"),
        DATETIME("TextInputType.datetime"),
        NAME("TextInputType.name"),
        POSTAL_ADDRESS("TextInputType.address"),
        NUMBER("TextInputType.number"),
        PHONE("TextInputType.phone"),
        MULTILINE("TextInputType.multiline"),
        EMAIL_ADDRESS("TextInputType.emailAddress"),
        URL("TextInputType.url"),
        VISIBLE_PASSWORD("TextInputType.visiblePassword"),
        NONE("TextInputType.none");

        public final String m;

        g(String str) {
            this.m = str;
        }

        public static g e(String str) {
            for (g gVar : values()) {
                if (gVar.m.equals(str)) {
                    return gVar;
                }
            }
            throw new NoSuchFieldException("No such TextInputType: " + str);
        }
    }

    public xz0(si siVar) {
        a aVar = new a();
        this.c = aVar;
        kd0 kd0Var = new kd0(siVar, "flutter/textinput", n60.a);
        this.a = kd0Var;
        kd0Var.e(aVar);
    }

    public static HashMap c(ArrayList arrayList) {
        HashMap hashMap = new HashMap();
        JSONArray jSONArray = new JSONArray();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jSONArray.put(((wz0) it.next()).b());
        }
        hashMap.put("deltas", jSONArray);
        return hashMap;
    }

    public static HashMap d(String str, int i, int i2, int i3, int i4) {
        HashMap hashMap = new HashMap();
        hashMap.put("text", str);
        hashMap.put("selectionBase", Integer.valueOf(i));
        hashMap.put("selectionExtent", Integer.valueOf(i2));
        hashMap.put("composingBase", Integer.valueOf(i3));
        hashMap.put("composingExtent", Integer.valueOf(i4));
        return hashMap;
    }

    public void b(int i, Map map) {
        ea0.f("TextInputChannel", "Sending 'commitContent' message.");
        this.a.c("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.commitContent", map));
    }

    public void e(int i) {
        ea0.f("TextInputChannel", "Sending 'done' message.");
        this.a.c("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.done"));
    }

    public void f(int i) {
        ea0.f("TextInputChannel", "Sending 'go' message.");
        this.a.c("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.go"));
    }

    public void g(int i) {
        ea0.f("TextInputChannel", "Sending 'newline' message.");
        this.a.c("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.newline"));
    }

    public void h(int i) {
        ea0.f("TextInputChannel", "Sending 'next' message.");
        this.a.c("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.next"));
    }

    public void i(int i, String str, Bundle bundle) {
        HashMap hashMap = new HashMap();
        hashMap.put("action", str);
        if (bundle != null) {
            HashMap hashMap2 = new HashMap();
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj instanceof byte[]) {
                    hashMap2.put(str2, bundle.getByteArray(str2));
                } else if (obj instanceof Byte) {
                    hashMap2.put(str2, Byte.valueOf(bundle.getByte(str2)));
                } else if (obj instanceof char[]) {
                    hashMap2.put(str2, bundle.getCharArray(str2));
                } else if (obj instanceof Character) {
                    hashMap2.put(str2, Character.valueOf(bundle.getChar(str2)));
                } else if (obj instanceof CharSequence[]) {
                    hashMap2.put(str2, bundle.getCharSequenceArray(str2));
                } else if (obj instanceof CharSequence) {
                    hashMap2.put(str2, bundle.getCharSequence(str2));
                } else if (obj instanceof float[]) {
                    hashMap2.put(str2, bundle.getFloatArray(str2));
                } else if (obj instanceof Float) {
                    hashMap2.put(str2, Float.valueOf(bundle.getFloat(str2)));
                }
            }
            hashMap.put("data", hashMap2);
        }
        this.a.c("TextInputClient.performPrivateCommand", Arrays.asList(Integer.valueOf(i), hashMap));
    }

    public void j(int i) {
        ea0.f("TextInputChannel", "Sending 'previous' message.");
        this.a.c("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.previous"));
    }

    public void k() {
        this.a.c("TextInputClient.requestExistingInputState", null);
    }

    public void l(int i) {
        ea0.f("TextInputChannel", "Sending 'search' message.");
        this.a.c("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.search"));
    }

    public void m(int i) {
        ea0.f("TextInputChannel", "Sending 'send' message.");
        this.a.c("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.send"));
    }

    public void n(f fVar) {
        this.b = fVar;
    }

    public void o(int i) {
        ea0.f("TextInputChannel", "Sending 'unspecified' message.");
        this.a.c("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i), "TextInputAction.unspecified"));
    }

    public void p(int i, String str, int i2, int i3, int i4, int i5) {
        ea0.f("TextInputChannel", "Sending message to update editing state: \nText: " + str + "\nSelection start: " + i2 + "\nSelection end: " + i3 + "\nComposing start: " + i4 + "\nComposing end: " + i5);
        this.a.c("TextInputClient.updateEditingState", Arrays.asList(Integer.valueOf(i), d(str, i2, i3, i4, i5)));
    }

    public void q(int i, ArrayList arrayList) {
        ea0.f("TextInputChannel", "Sending message to update editing state with deltas: \nNumber of deltas: " + arrayList.size());
        this.a.c("TextInputClient.updateEditingStateWithDeltas", Arrays.asList(Integer.valueOf(i), c(arrayList)));
    }

    public void r(int i, HashMap hashMap) {
        ea0.f("TextInputChannel", "Sending message to update editing state for " + String.valueOf(hashMap.size()) + " field(s).");
        HashMap hashMap2 = new HashMap();
        for (Map.Entry entry : hashMap.entrySet()) {
            e eVar = (e) entry.getValue();
            hashMap2.put((String) entry.getKey(), d(eVar.a, eVar.b, eVar.c, -1, -1));
        }
        this.a.c("TextInputClient.updateEditingStateWithTag", Arrays.asList(Integer.valueOf(i), hashMap2));
    }
}

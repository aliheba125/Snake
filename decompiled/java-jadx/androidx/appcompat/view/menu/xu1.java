package androidx.appcompat.view.menu;

import android.content.SharedPreferences;
import android.os.Bundle;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class xu1 {
    public final String a;
    public final Bundle b;
    public Bundle c;
    public final /* synthetic */ tu1 d;

    public xu1(tu1 tu1Var, String str, Bundle bundle) {
        this.d = tu1Var;
        mj0.e(str);
        this.a = str;
        this.b = new Bundle();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0120 A[Catch: NumberFormatException | JSONException -> 0x0128, NumberFormatException | JSONException -> 0x0128, TRY_LEAVE, TryCatch #1 {NumberFormatException | JSONException -> 0x0128, blocks: (B:13:0x0025, B:31:0x0091, B:31:0x0091, B:34:0x00a2, B:34:0x00a2, B:36:0x00a8, B:36:0x00a8, B:38:0x00b6, B:38:0x00b6, B:40:0x00c8, B:40:0x00c8, B:42:0x00d1, B:42:0x00d1, B:46:0x00d5, B:46:0x00d5, B:48:0x00db, B:48:0x00db, B:50:0x00e9, B:50:0x00e9, B:52:0x00fb, B:52:0x00fb, B:54:0x0104, B:54:0x0104, B:58:0x0108, B:58:0x0108, B:60:0x0114, B:60:0x0114, B:62:0x0120, B:62:0x0120, B:64:0x0052, B:67:0x005c, B:70:0x0066, B:73:0x0070, B:76:0x007a), top: B:12:0x0025, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bundle a() {
        JSONObject jSONObject;
        String string;
        String string2;
        int hashCode;
        char c;
        if (this.c == null) {
            String string3 = this.d.F().getString(this.a, null);
            if (string3 != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string3);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            jSONObject = jSONArray.getJSONObject(i);
                            string = jSONObject.getString("n");
                            string2 = jSONObject.getString("t");
                            hashCode = string2.hashCode();
                        } catch (NumberFormatException | JSONException unused) {
                            this.d.l().G().a("Error reading value from SharedPreferences. Value dropped");
                        }
                        if (hashCode == 100) {
                            if (string2.equals("d")) {
                                c = 1;
                                if (c != 0) {
                                }
                            }
                            c = 65535;
                            if (c != 0) {
                            }
                        } else if (hashCode == 108) {
                            if (string2.equals("l")) {
                                c = 2;
                                if (c != 0) {
                                }
                            }
                            c = 65535;
                            if (c != 0) {
                            }
                        } else if (hashCode == 115) {
                            if (string2.equals("s")) {
                                c = 0;
                                if (c != 0) {
                                }
                            }
                            c = 65535;
                            if (c != 0) {
                            }
                        } else if (hashCode != 3352) {
                            if (hashCode == 3445 && string2.equals("la")) {
                                c = 4;
                                if (c != 0) {
                                    bundle.putString(string, jSONObject.getString("v"));
                                } else if (c == 1) {
                                    bundle.putDouble(string, Double.parseDouble(jSONObject.getString("v")));
                                } else if (c == 2) {
                                    bundle.putLong(string, Long.parseLong(jSONObject.getString("v")));
                                } else if (c != 3) {
                                    if (c != 4) {
                                        this.d.l().G().b("Unrecognized persisted bundle type. Type", string2);
                                    } else if (sc2.a() && this.d.e().s(si1.M0)) {
                                        JSONArray jSONArray2 = new JSONArray(jSONObject.getString("v"));
                                        int length = jSONArray2.length();
                                        long[] jArr = new long[length];
                                        for (int i2 = 0; i2 < length; i2++) {
                                            jArr[i2] = jSONArray2.optLong(i2);
                                        }
                                        bundle.putLongArray(string, jArr);
                                    }
                                } else if (sc2.a() && this.d.e().s(si1.M0)) {
                                    JSONArray jSONArray3 = new JSONArray(jSONObject.getString("v"));
                                    int length2 = jSONArray3.length();
                                    int[] iArr = new int[length2];
                                    for (int i3 = 0; i3 < length2; i3++) {
                                        iArr[i3] = jSONArray3.optInt(i3);
                                    }
                                    bundle.putIntArray(string, iArr);
                                }
                            }
                            c = 65535;
                            if (c != 0) {
                            }
                        } else {
                            if (string2.equals("ia")) {
                                c = 3;
                                if (c != 0) {
                                }
                            }
                            c = 65535;
                            if (c != 0) {
                            }
                        }
                    }
                    this.c = bundle;
                } catch (JSONException unused2) {
                    this.d.l().G().a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.c == null) {
                this.c = this.b;
            }
        }
        return this.c;
    }

    public final void b(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        SharedPreferences.Editor edit = this.d.F().edit();
        if (bundle.size() == 0) {
            edit.remove(this.a);
        } else {
            edit.putString(this.a, c(bundle));
        }
        edit.apply();
        this.c = bundle;
    }

    public final String c(Bundle bundle) {
        JSONArray jSONArray = new JSONArray();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", str);
                    if (!sc2.a() || !this.d.e().s(si1.M0)) {
                        jSONObject.put("v", String.valueOf(obj));
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            this.d.l().G().b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                    } else if (obj instanceof String) {
                        jSONObject.put("v", String.valueOf(obj));
                        jSONObject.put("t", "s");
                    } else if (obj instanceof Long) {
                        jSONObject.put("v", String.valueOf(obj));
                        jSONObject.put("t", "l");
                    } else if (obj instanceof int[]) {
                        jSONObject.put("v", Arrays.toString((int[]) obj));
                        jSONObject.put("t", "ia");
                    } else if (obj instanceof long[]) {
                        jSONObject.put("v", Arrays.toString((long[]) obj));
                        jSONObject.put("t", "la");
                    } else if (obj instanceof Double) {
                        jSONObject.put("v", String.valueOf(obj));
                        jSONObject.put("t", "d");
                    } else {
                        this.d.l().G().b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                    }
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                    this.d.l().G().b("Cannot serialize bundle value to SharedPreferences", e);
                }
            }
        }
        return jSONArray.toString();
    }
}

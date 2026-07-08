# سلوك التشغيل من طبقة Java (مقتطفات الأدلة)

هذه أدلة مباشرة مقروءة من كود Java المفكوك (jadx) تُجيب على سؤال: **ماذا يُحمّل/ينشئ/يعدّل التطبيق وقت التشغيل؟**

## 1. تحميل المحرّك الأصلي عند الإقلاع — `com/snake/App.java`
```java
static { System.loadLibrary("engine"); }        // يُحمّل libengine.so قبل أي شيء
public void attachBaseContext(Context context){ // تهيئة إطار الحاوية
    super.attachBaseContext(context);
    zh.a(this); a = context;
    yu0.h().f(a, new a());
}
```

## 2. تزييف فئات الانعكاس الأساسية (Hooking) — `androidx/appcompat/view/menu/fh.java`
```java
public final class fh extends PathClassLoader {
    public Class loadClass(String str){
        ...
        return Executable.class.getName().equals(str) ? cz.c.class
             : MethodHandle.class.getName().equals(str) ? cz.e.class
             : Class.class.getName().equals(str) ? cz.b.class
             : super.loadClass(str);   // يُرجع فئات مزيّفة بدل الأصلية
    }
}
```
→ يعترض تحميل `Executable` / `MethodHandle` / `Class` ويستبدلها بنسخ خاصة → بنية Hooking للانعكاس.

## 3. جسر Hooking أصلي + إعادة تعيين الهوية — `com/snake/helper/Native.java`
```java
public static native void update(Object obj, Method method); // تسجيل/هوك دالة عبر JNI
public static int gcuid(int i){                              // إعادة تعيين UID/PID
    ... int r = yu0.u().r(Binder.getCallingPid()); ...
}
public static native String ilil(int i);      // فك سلسلة بالفهرس (تشفير سلاسل)
public static native byte[] djp(int i);        // فك/إرجاع بيانات
public static native boolean chl(byte[] b);    // فحص (ترخيص/توقيع؟)
// دوال أصلية أخرى مبهمة: ac, aior, awl, eio, i, ic, pjowqpxe
```
`MethodUtils` تبني توصيف JNI للدالة (`(params)ret`) ليستخدمها الكود الأصلي في الـ Hooking.

## 4. الاستمرارية (Persistence) — `com/snake/helper/DaemonService.java`
```java
public void onDestroy(){ b(1500L); super.onDestroy(); }      // يعيد جدولة نفسه
public void onTaskRemoved(Intent i){ b(1000L); ... }         // يبقى حيًّا بعد الإزالة
// b() يستخدم AlarmManager.setExactAndAllowWhileIdle لإعادة التشغيل
```

## 5. IPC للحاوية الافتراضية — `com/snake/helper/SystemCallProvider.java`
```java
public Bundle call(String str, String str2, Bundle bundle){
    if(!"VM".equals(str)) return super.call(...);
    ... e9.d(bundle2, "_S_|_server_", at0.b(bundle.getString("_S_|_server_name_")));
}
```

## الخلاصة
تحميل مكتبة أصلية + محمّلات فئات مخصّصة (DexClassLoader/PathClassLoader) + تزييف فئات الانعكاس + Hooking أصلي + إعادة تعيين UID/PID + خدمة دائمة + IPC للحاوية = **إطار محاكاة تطبيقات مع محرّك Hooking أصلي** (🟡 توصيف مدعوم بأدلة قوية).

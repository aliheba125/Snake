.class public abstract Landroidx/appcompat/view/menu/vx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/lang/String;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/vx;->b(Ljava/lang/String;JZ)V

    return-void
.end method

.method public static b(Ljava/lang/String;JZ)V
    .locals 15

    move-object v0, p0

    if-nez v0, :cond_0

    const/4 v2, 0x3

    :try_start_0
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-wide/from16 v0, p1

    move/from16 v6, p3

    invoke-static/range {v0 .. v6}, Landroidx/appcompat/view/menu/vx;->c(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    const v7, 0xf11301

    invoke-static {v7}, Lcom/snake/helper/Native;->ilil(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    if-nez v7, :cond_4

    const/4 v10, 0x3

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    move-wide/from16 v8, p1

    move/from16 v14, p3

    invoke-static/range {v8 .. v14}, Landroidx/appcompat/view/menu/vx;->c(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_4
    invoke-static {v7}, Landroidx/appcompat/view/menu/vx;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    move-object v6, v0

    goto :goto_4

    :cond_5
    move-object v6, v2

    :goto_4
    const-string v8, ""

    move-wide/from16 v3, p1

    move/from16 v9, p3

    invoke-static/range {v3 .. v9}, Landroidx/appcompat/view/menu/vx;->c(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    const/4 v3, 0x5

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v1, p1

    move/from16 v7, p3

    invoke-static/range {v1 .. v7}, Landroidx/appcompat/view/menu/vx;->c(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_6
    return-void
.end method

.method public static c(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const-class v0, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/vx;->d()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v2, 0xf11501

    invoke-static {v2}, Lcom/snake/helper/Native;->ilil(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const v2, 0xf21501

    invoke-static {v2}, Lcom/snake/helper/Native;->ilil(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p0, p1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p0, "loginWithResult"

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0, v4, p6}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const p0, 0xf31501

    const/4 p1, 0x3

    const/4 p6, 0x2

    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/snake/helper/Native;->ilil(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    aput-object v0, v7, v3

    aput-object v0, v7, p6

    aput-object v0, v7, p1

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object p3, v6, v3

    aput-object p4, v6, p6

    aput-object p5, v6, p1

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_3
    invoke-static {p0}, Lcom/snake/helper/Native;->ilil(I)Ljava/lang/String;

    move-result-object p0

    new-array p5, p1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, p5, v2

    aput-object v0, p5, v3

    aput-object v0, p5, p6

    invoke-virtual {v1, p0, p5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array p1, p1, [Ljava/lang/Object;

    if-nez p2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    aput-object p3, p1, v3

    aput-object p4, p1, p6

    invoke-virtual {p0, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public static d()Ljava/lang/ClassLoader;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static e()Landroid/app/Activity;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v1, "activity"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static f(Landroid/app/Activity;Ljava/lang/String;IJZ)V
    .locals 7

    const p1, 0xf11520

    invoke-static {p1}, Lcom/snake/helper/Native;->ilil(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0xf11521

    invoke-static {v0}, Lcom/snake/helper/Native;->ilil(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/yu0;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/content/BroadcastReceiver;

    new-instance v0, Landroidx/appcompat/view/menu/vx$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/vx$a;-><init>(Landroid/content/Context;[Landroid/content/BroadcastReceiver;JZ)V

    const/4 p3, 0x0

    aput-object v0, p1, p3

    new-instance p4, Landroid/content/IntentFilter;

    invoke-direct {p4}, Landroid/content/IntentFilter;-><init>()V

    const-string p5, "com.snake.INTERNAL_OAUTH_RESULT"

    invoke-virtual {p4, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p5, "com.snake.INTERNAL_OAUTH_CANCELLED"

    invoke-virtual {p4, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p5, v0, :cond_0

    aget-object p1, p1, p3

    const/4 p3, 0x4

    invoke-virtual {p0, p1, p4, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    aget-object p1, p1, p3

    invoke-virtual {p0, p1, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    invoke-static {p2}, Landroidx/appcompat/view/menu/yu0;->d(I)V

    return-void
.end method

.method public static g(Ljava/lang/String;J)V
    .locals 3

    :try_start_0
    const-string p0, "android.app.ActivityThread"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "currentActivityThread"

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "currentApplication"

    new-array v2, p2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    :cond_0
    const-string v0, "getProcessName"

    new-array v1, p2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    aget-object p0, p0, v1

    const/16 v1, 0xb

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "sub"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method
